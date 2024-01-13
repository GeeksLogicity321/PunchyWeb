import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../Models/StoriesModel.dart';
import '../constant/api_constants.dart';

class StoriesProvider extends ChangeNotifier {
  List<StoriesModel> _stories = [];

  List<StoriesModel> get stories => _stories;
  int? _selected;

  get selected => _selected;

  Future<void> fetchStories() async {
    try {
      final Uri url = Uri.parse(ApiConstants.sportsNews);

      final response = await http.get(
        url,
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);

        final List<dynamic> decodedResponse = jsonResponse['storyList'];
        final filteredStories = [];
        for (final item in decodedResponse) {
          if (item.containsKey("story")) {
            final story = item["story"];
            filteredStories.add(story);
          }
        }

        _stories =
            filteredStories.map((data) => StoriesModel.fromJson(data)).toList();
        notifyListeners();
      } else {
        throw Exception('Error cannot connect to stories api');
      }
    } catch (e) {
      rethrow;
    }
  }
}
