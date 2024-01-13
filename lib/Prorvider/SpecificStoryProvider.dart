import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../constant/api_constants.dart';
import '../models/SpecificStoryModel.dart';

class SpecificStoryProvider extends ChangeNotifier {
  List<String> _description = [];
  List<String> get description => _description;

  late CoverImage _coverimage;
  CoverImage get coverimage => _coverimage;

  late Authors _authors;
  Authors get authors => _authors;

  int? _selected;

  get selected => _selected;

  Future<void> fetchSpecificStories() async {
    try {
      final Uri url =
          Uri.parse(ApiConstants.specificStory + _selected.toString());

      final response = await http.get(
        url,
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);

        final SpecificStoryModel storyobject =
            SpecificStoryModel.fromJson(jsonResponse);
        _authors = storyobject.authors![0];

        _coverimage = storyobject.coverImage!;

        final List<String> listOfDecription = [];
        for (final item in storyobject.content!) {
          if (item.contentType == "text") {
            final text = item.contentValue;
            listOfDecription.add(text!);
          }
        }
        _description = listOfDecription;
      } else {
        throw Exception('Error cannot connect to Specificstories api');
      }
    } catch (e) {
      rethrow;
    }
  }

  void setid(int id) {
    _selected = id;
    fetchSpecificStories();
  }
}
