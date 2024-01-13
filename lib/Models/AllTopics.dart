import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import '../constant/api_constants.dart';
import '../models/storiesmodel.dart';
import 'TopicsModel.dart';

class TopicsProvider extends ChangeNotifier {
  bool hasTopicData = false;
  List<TopicsModel> _topics = [];
  List<TopicsModel> get topics => _topics;

  int? _selected;

  get selected => _selected;

  Future<void> fetchTopics() async {
    try {
      final Uri url = Uri.parse(ApiConstants.topics);

      final response = await http.get(
        url,
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);

        List<dynamic> topicList = jsonResponse['topics'];

        _topics = topicList.map((e) => TopicsModel.fromJson(e)).toList();
        hasTopicData = true;
        notifyListeners();
      } else {
        throw Exception('Error cannot connect to News/Topics');
      }
    } catch (e) {
      print('error:$e');
    }
  }

  List<StoriesModel> _stories = [];
  List<StoriesModel> get stories => _stories;

  Future<void> fetchSpecificTopics() async {
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

        _stories = storylist.map((e) => StoriesModel.fromJson(e)).toList();
      } else {
        throw Exception('Error cannot connect to News/SpecificTopics');
      }
    } catch (e) {
      print('error:$e');
    }
  }

  void setid(int id) {
    _selected = id;
    print('id set to $id');
  }
}
