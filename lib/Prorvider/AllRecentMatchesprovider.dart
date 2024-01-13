import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../Models/LiveMatchesModel.dart';
import '../constant/api_constants.dart';

class AllRecentMatchesProvider extends ChangeNotifier {
  List<LiveMatchesModel> _allRecentMatchesInfo = [];

  List<LiveMatchesModel> get allRecentMatchesInfo => _allRecentMatchesInfo;

  Future<void> fetchMatches() async {
    try {
      final Uri url = Uri.parse(ApiConstants.allRecentMatches);

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

        _allRecentMatchesInfo =
            dataMap.map((data) => LiveMatchesModel.fromJson(data)).toList();
        notifyListeners();
      } else {
        throw Exception('Error cannot connect to Upcoming matches api');
      }
    } catch (e) {
      print('error:$e');
    }
  }
}
