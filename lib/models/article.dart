import 'package:timeago/timeago.dart' as timeago;

class Article {
  final String title;
  final String uri;
  final DateTime publishedAt;
  final String source;
  final String? urlToImage;

  const Article(
      {required this.title,
      required this.uri,
      required this.publishedAt,
      required this.source,
      required this.urlToImage});

  String captionText() {
    final formattedPublishedAt =
        timeago.format(publishedAt, locale: "en_short");
    return "$source $formattedPublishedAt";
  }

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
        title: json['title'] ?? "",
        uri: json['url'] ?? "",
        publishedAt: DateTime.tryParse(json['publishedAt']) ?? DateTime.now(),
        source: json['source']['name'],
        urlToImage: json['urlToImage']);
  }
}
