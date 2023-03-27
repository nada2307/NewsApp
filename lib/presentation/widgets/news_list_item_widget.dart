import 'package:flutter/material.dart';
import 'package:news_app/data/model/news_model.dart';

class NewsListItemWidget extends StatelessWidget {
  final NewsModel newsModel;

  const NewsListItemWidget({Key? key, required this.newsModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 120,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Image(
            image: NetworkImage(
              newsModel.image,
            ),
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                newsModel.category,
                style:
                    const TextStyle(fontWeight: FontWeight.w200, color: Colors.grey),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                newsModel.text,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(newsModel.profileImage),
                    radius: 10,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    newsModel.name,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.circle_rounded,
                    size: 5,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    newsModel.date,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
