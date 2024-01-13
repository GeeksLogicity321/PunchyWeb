class SpecificStoryModel {
  int? id;
  String? headline;
  CoverImage? coverImage;
  List<Content>? content;
  List<Authors>? authors;

  SpecificStoryModel({
    this.id,
    this.headline,
    this.coverImage,
    this.content,
    this.authors,
  });

  SpecificStoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];

    headline = json['headline'];

    coverImage = json['coverImage'] != null
        ? CoverImage.fromJson(json['coverImage'])
        : null;
    if (json['content'] != null) {
      content = <Content>[];
      json['content'].forEach((v) {
        if (v['content'] != null) {
          content!.add(Content.fromJson(v['content']));
        }
      });
    }
    if (json['authors'] != null) {
      authors = <Authors>[];
      json['authors'].forEach((v) {
        authors!.add(Authors.fromJson(v));
      });
    }
  }
}

class CoverImage {
  String? id;
  String? caption;
  String? source;

  CoverImage({this.id, this.caption, this.source});

  CoverImage.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    caption = json['caption'];
    source = json['source'];
  }
}

class Content {
  String? contentType;
  String? contentValue;

  Content({this.contentType, this.contentValue});

  Content.fromJson(Map<String, dynamic> json) {
    contentType = json['contentType'];
    contentValue = json['contentValue'];
  }
}

class Authors {
  int? id;
  String? name;
  int? imageId;

  Authors({this.id, this.name, this.imageId});

  Authors.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    imageId = json['imageId'];
  }
}
