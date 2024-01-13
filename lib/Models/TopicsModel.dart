class TopicsModel {
  int? id;
  String? headline;
  String? description;

  TopicsModel({this.id, this.headline, this.description});

  TopicsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    headline = json['headline'];
    description = json['description'];
  }
}
