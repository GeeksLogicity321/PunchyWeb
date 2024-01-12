import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../Models/LiveMatchesModel.dart';
import '../constant/api_constants.dart';

class AllLiveMatchesProvider extends ChangeNotifier {
  List<LiveMatchesModel> _allLiveMatchesInfo = [];
  List<LiveMatchesModel> get allLiveMatchesInfo => _allLiveMatchesInfo;

  Future<void> fetchMatches() async {
    try {
      final Uri url = Uri.parse(ApiConstants.allLiveMatches);

      final response = await http.get(
        url,
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> jsonResponse = json.decode(response.body);
        List<dynamic> matchesTypeList = jsonResponse['typeMatches'];
        List<Map<String, dynamic>> dataMap = [];
        for (var item in matchesTypeList) {
          dataMap.add(item);
        }
        _allLiveMatchesInfo =
            dataMap.map((data) => LiveMatchesModel.fromJson(data)).toList();
        notifyListeners();
      } else {
        notifyListeners();
        throw Exception('Error cannot connect to AllHomeInternational');
      }
    } catch (e) {
      notifyListeners();
      print('error:$e');
    }
  }
}
