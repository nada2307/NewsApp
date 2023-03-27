class TrendingNewsModel {
  final String category;
  final String text;
  final String image;
  final String date;
  final String name;
  bool verified;

  TrendingNewsModel({
    required this.category,
    required this.text,
    required this.image,
    required this.date,
    required this.name,
    this.verified = false,
  });
}
