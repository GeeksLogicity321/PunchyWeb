import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../Models/CommentryListMode.dart';
import '../Models/MatchInfoModel.dart';

import '../Models/OversModel.dart';
import '../constant/api_constants.dart';

class SpecificMatchDetailProvider extends ChangeNotifier {
  MatchInfoModel? _matchInfo;
  MatchInfoModel? get matchinfo => _matchInfo;
  bool _matchinfoIsLoading = false;
  bool get matchinfoIsLoading => _matchinfoIsLoading;

  int? _selected;
  get selected => _selected;

  Future<void> fetchMatchesInfo() async {
    _matchinfoIsLoading = true;
    notifyListeners();
    try {
      final Uri url =
          Uri.parse(ApiConstants.specificMatchDetails + _selected!.toString());

      final response = await http.get(
        url,
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);

        _matchInfo = MatchInfoModel.fromJson(jsonResponse);
        _matchinfoIsLoading = false;
      } else {
        _matchinfoIsLoading = false;
        throw Exception('Error cannot connect to AllHomeInternational');
      }
    } catch (e) {
      _matchinfoIsLoading = false;
      print('error:$e');
    }

    notifyListeners();
    fetchcommentary();
  }

  CommentaryListModel? _commentary;
  CommentaryListModel? get commentary => _commentary;
  bool _commentaryIsLoading = true;
  bool get commentaryIsLoading => _commentaryIsLoading;

  Future<void> fetchcommentary() async {
    try {
      _commentaryIsLoading = true;
      notifyListeners();
      _commentary = null;

      final Uri url =
          Uri.parse(ApiConstants.specificCommentary + _selected!.toString());

      final response = await http.get(
        url,
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        if (jsonResponse == "" && jsonResponse.isEmpty) {
          _commentary = null;
          _commentaryIsLoading = false;
        } else {
          _commentary = CommentaryListModel.fromJson(jsonResponse);
          _commentaryIsLoading = false;
        }
      } else {
        _commentaryIsLoading = false;
        throw Exception('Error cannot connect to Specific Commentary');
      }
    } catch (e) {
      print('error:$e');
      _commentaryIsLoading = false;
    }

    notifyListeners();
    fetchOversInfo();
  }

  OversModel? _oversInfo;
  OversModel? get oversInfo => _oversInfo;
  bool _oversInfoIsLoading = true;
  bool get oversInfoIsLoading => _oversInfoIsLoading;

  Future<void> fetchOversInfo() async {
    _oversInfoIsLoading = true;
    try {
      final Uri url = Uri.parse(ApiConstants.overs + _selected!.toString());

      final response = await http.get(
        url,
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);

        if (jsonResponse == '' ||
            jsonResponse.isEmpty ||
            jsonResponse == null) {
          _oversInfo = null;
        } else {
          _oversInfo = OversModel.fromJson(jsonResponse);
        }
      } else {
        throw Exception('Error cannot connect to matches/match-overs');
      }
      _oversInfoIsLoading = false;
    } catch (e) {
      _oversInfoIsLoading = false;
      print('error:$e');
    }
    notifyListeners();
  }

  void setSelected(int id) {
    _selected = id;
    fetchMatchesInfo();
  }

  clearValue() {
    _matchInfo == null;
  }
}
