import 'package:fluent_ui/fluent_ui.dart';
import 'package:xca_news/models/article_category.dart';

class NewsPage {
  final String title;
  final IconData iconData;
  final ArticleCategory category;

  const NewsPage(
      {required this.title, required this.iconData, required this.category});
}
