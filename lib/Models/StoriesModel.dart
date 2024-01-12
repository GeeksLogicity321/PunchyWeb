class StoriesModel {
  final int id;
  final String headline;
  final String intro;
  final String pubTime;
  final String source;
  final String storyType;
  final int imageId;
  final String seoHeadline;
  final String context;
  final CoverImage coverImage;

  StoriesModel({
    required this.id,
    required this.headline,
    required this.intro,
    required this.pubTime,
    required this.source,
    required this.storyType,
    required this.imageId,
    required this.seoHeadline,
    required this.context,
    required this.coverImage,
  });

  factory StoriesModel.fromJson(Map<String, dynamic>? json) {
    return StoriesModel(
      id: json?['id'],
      headline: json?['hline'],
      intro: json?['intro'],
      pubTime: json?['pubTime'],
      source: json?['source'] ?? 'source',
      storyType: json?['storyType'],
      imageId: json?['imageId'],
      seoHeadline: json?['seoHeadline'],
      context: json?['context'],
      coverImage: CoverImage.fromJson(json?['coverImage']),
    );
  }
}

class CoverImage {
  final String id;
  final String caption;
  final String source;

  CoverImage({
    required this.id,
    required this.caption,
    required this.source,
  });

  factory CoverImage.fromJson(Map<String, dynamic> json) {
    return CoverImage(
      id: json['id'],
      caption: json['caption'],
      source: json['source'],
    );
  }
}
