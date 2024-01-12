import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../Models/LiveMatchesModel.dart';
import '../constant/api_constants.dart';

class AllRecentMatchesProvider extends ChangeNotifier {
  List<LiveMatchesModel> _allRecentMatchesInfo = [];

  List<LiveMatchesModel> get allRecentMatchesInfo => _allRecentMatchesInfo;

  int? _selected;

  get selected => _selected;

  Future<void> fetchMatchesWithRetry() async {
    const maxRetries = 3;
    int retryCount = 0;

    while (retryCount < maxRetries) {
      try {
        await fetchMatches();

        break;
      } catch (e) {
        print('Error cannot connect to Upcoming matches api: $e');
        retryCount++;

        if (retryCount < maxRetries) {
          await Future.delayed(const Duration(seconds: 2));
        } else {
          print(
              'Failed to fetch Upcoming matches api after $maxRetries attempts');
          break;
        }
      }
    }
  }

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

  void setSelected(int id) {
    _selected = id;
  }
}
