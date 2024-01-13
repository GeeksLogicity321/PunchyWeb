class Catagory {
  List<StoryType>? storyType;

  Catagory({this.storyType});

  Catagory.fromJson(Map<String, dynamic> json) {
    if (json['storyType'] != null) {
      storyType = <StoryType>[];
      json['storyType'].forEach((v) {
        storyType!.add(StoryType.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (storyType != null) {
      data['storyType'] = storyType!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class StoryType {
  int? id;
  String? name;
  String? description;

  StoryType({this.id, this.name, this.description});

  StoryType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    return data;
  }
}
