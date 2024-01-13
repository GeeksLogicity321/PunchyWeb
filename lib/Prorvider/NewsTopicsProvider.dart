import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:punchy_web/Models/StoriesModel.dart';
import 'package:punchy_web/Models/TopicsModel.dart';
import 'package:punchy_web/constant/api_constants.dart';
import 'package:http/http.dart' as http;

class NewsTopicsProvider extends ChangeNotifier {
  List<TopicsModel> _topics = [];
  List<TopicsModel> get topics => _topics;
  List<StoriesModel> _specifictopics = [];
  List<StoriesModel> get specifictopics => _specifictopics;

  int? _selected;
  get selected => _selected;

  Future<void> fetchTopics() async {
    notifyListeners();
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
      notifyListeners();
      rethrow;
    }
    notifyListeners();
  }

  Future<void> fetchSpecificTopics() async {
    notifyListeners();
    try {
      final Uri url =
          Uri.parse(ApiConstants.specifictopics + _selected.toString());

      final response = await http.get(
        url,
      );
      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);

        List<dynamic> storyAndAdlist = jsonResponse['storyList'];

        List storylist = [];

        for (final i in storyAndAdlist) {
          if (i.containsKey('story')) {
            storylist.add(i['story']);
          }
        }

        _specifictopics =
            storylist.map((e) => StoriesModel.fromJson(e)).toList();
      } else {
        throw Exception('Error cannot connect to Specificstories api');
      }
      notifyListeners();
    } catch (e) {
      notifyListeners();
      rethrow;
    }
  }

  void setid(int id) {
    _selected = id;
    fetchSpecificTopics();
  }
}
