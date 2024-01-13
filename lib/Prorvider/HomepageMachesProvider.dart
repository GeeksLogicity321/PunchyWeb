import 'dart:convert';

import 'package:flutter/material.dart';

import '../Models/AllHomeInternationalMatches.dart';
import '../constant/api_constants.dart';
import 'package:http/http.dart' as http;

class AllHomeInternationalMatchInfoProvider extends ChangeNotifier {
  final List<HomeMatchesModel> _matches = [];

  List<HomeMatchesModel> get matches => _matches;

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
        print('Error while fetching AllHomeInternational: $e');
        retryCount++;

        if (retryCount < maxRetries) {
          await Future.delayed(const Duration(seconds: 2));
        } else {
          print(
              'Failed to fetch AllHomeInternational after $maxRetries attempts');
          break;
        }
      }
    }
  }

  Future<void> fetchMatches() async {
    try {
      final Uri url = Uri.parse(ApiConstants.allInternationalMatches);

      final response = await http.get(
        url,
      );

      if (response.statusCode == 200) {
        final List<dynamic> jsonResponse = json.decode(response.body);

        for (Map<String, dynamic> i1 in jsonResponse) {
          for (Map<String, dynamic> i2 in i1['seriesMatches']) {
            if (i2.containsKey('seriesAdWrapper')) {
              for (Map<String, dynamic> i3 in i2['seriesAdWrapper']
                  ['matches']) {
                _matches.add(HomeMatchesModel.fromJson(i3));
              }
            }
          }
        }

        notifyListeners();
      } else {
        throw Exception('Error cannot connect to AllHomeInternational');
      }
    } catch (e) {
      print('error:$e');
      notifyListeners();
    }
  }

  void setSelected(int id) {
    _selected = id;
  }
}
