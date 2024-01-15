import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '/Models/SpecificStoryModel.dart';
import '../constant/api_constants.dart';

class SpecificStoryProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<String> _description = [];
  List<String> get description => _description;

  late CoverImage _coverimage;
  CoverImage get coverimage => _coverimage;

  late Authors _authors;
  Authors get authors => _authors;

  late String _pubTime;
  String get pubTime => _pubTime;

  int? _selected;

  get selected => _selected;

  Future<void> fetchSpecificStories() async {
    _isLoading = true;
    notifyListeners();
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

        _pubTime = storyobject.pubTime!;
      } else {
        throw Exception('Error cannot connect to Specificstories api');
      }
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      rethrow;
    }
    _isLoading = false;
    notifyListeners();
  }

  void setid(int id) {
    _selected = id;
    fetchSpecificStories();
  }
}
