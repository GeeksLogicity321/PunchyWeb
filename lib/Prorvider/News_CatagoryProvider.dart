import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../Models/CatagoryModel.dart';
import '../Models/SpecificCatagoryModel.dart';
import '../constant/api_constants.dart';

class NewsCatagoryProvider extends ChangeNotifier {
  bool hasCatagorydata = false;
  late Catagory _catagories;
  Catagory get catagories => _catagories;

  bool hasSpecificCatagorydata = false;
  List<SpecificCategoryModel> _specificCatagories = [];
  List<SpecificCategoryModel> get specificCatagories => _specificCatagories;

  int? _selected;

  get selected => _selected;

  Future<void> fetchCatagory() async {
    try {
      print('catagories api call');
      final Uri url = Uri.parse(ApiConstants.catagory);

      final response = await http.get(
        url,
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);

        _catagories = Catagory.fromJson(jsonResponse);
        hasCatagorydata = true;
        notifyListeners();
      } else {
        throw Exception('Error cannot connect to News/Catagories');
      }
    } catch (e) {
      print('error:$e');
    }
  }

  Future<void> fetchSpecificCatagory() async {
    try {
      final Uri url =
          Uri.parse(ApiConstants.specificCatagory + _selected.toString());

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

        _specificCatagories =
            storylist.map((e) => SpecificCategoryModel.fromJson(e)).toList();
      } else {
        throw Exception('Error cannot connect to News/Specific_Catagories');
      }
    } catch (e) {
      print('error:$e');
    }
  }

  void SelectCatagory(int id) {
    _selected = id;
    print('id set to $id');
  }
}
