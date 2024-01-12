import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../Models/LiveMatchesModel.dart';
import '../constant/api_constants.dart';

class AllUpcomingMatchesProvider extends ChangeNotifier {
  List<LiveMatchesModel> _allUpcomingMatches = [];

  List<LiveMatchesModel> get allUpcomingMatchesInfo => _allUpcomingMatches;

  Future<void> fetchMatches() async {
    try {
      final Uri url = Uri.parse(ApiConstants.allUpcomingMatches);

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

        _allUpcomingMatches =
            dataMap.map((data) => LiveMatchesModel.fromJson(data)).toList();
        notifyListeners();
      } else {
        throw Exception('Error cannot connect to AllHomeInternational');
      }
    } catch (e) {
      print('error:$e');
    }
  }
}
