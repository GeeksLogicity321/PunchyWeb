class SpecificCategoryModel {
  int? id;
  String? hline;
  String? intro;
  String? pubTime;
  String? source;
  String? storyType;
  int? imageId;
  String? seoHeadline;
  String? context;
  CoverImage? coverImage;

  SpecificCategoryModel(
      {this.id,
      this.hline,
      this.intro,
      this.pubTime,
      this.source,
      this.storyType,
      this.imageId,
      this.seoHeadline,
      this.context,
      this.coverImage});

  SpecificCategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    hline = json['hline'];
    intro = json['intro'];
    pubTime = json['pubTime'];
    source = json['source'];
    storyType = json['storyType'];
    imageId = json['imageId'];
    seoHeadline = json['seoHeadline'];
    context = json['context'];
    coverImage = json['coverImage'] != null
        ? CoverImage.fromJson(json['coverImage'])
        : null;
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
