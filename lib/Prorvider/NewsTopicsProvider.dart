import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:punchy_web/Models/TopicsModel.dart';
import 'package:punchy_web/constant/api_constants.dart';
import 'package:http/http.dart' as http;

class NewsTopicsProvider extends ChangeNotifier {
  List<TopicsModel> _topics = [];
  List<TopicsModel> get topics => _topics;

  // int? _selected;
  // get selected => _selected;

  Future<void> fetchSpecificStories() async {
    try {
      final Uri url = Uri.parse(ApiConstants.topics);

      final response = await http.get(
        url,
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);

        for (final item in jsonResponse['topics']) {
          _topics.add(TopicsModel.fromJson(item));
        }
      } else {
        throw Exception('Error cannot connect to Specificstories api');
      }
    } catch (e) {
      rethrow;
    }
  }

  // void setid(int id) {
  //   _selected = id;
  //   print('id set to $id');
  // }
}
