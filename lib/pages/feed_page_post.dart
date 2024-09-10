import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  Post({super.key});

  List<String> images = [
    'https://cdn.pixabay.com/photo/2023/11/10/02/30/woman-8378634_960_720.jpg',
    'https://cdn.pixabay.com/photo/2024/02/08/14/13/sky-8561169_1280.jpg',
  ];
  List<int> favorites = [
    30032,
    24784,
  ];
  List<String> texts = [
    '今日も楽しかった。今日も楽しかった。今日も楽しかった。今日も楽しかった。今日も楽しかった。今日も楽しかった。今日も楽しかった。今日も楽しかった。今日も楽しかった。今日も楽しかった。今日も楽しかった。今日も楽しかった。',
    '明日も晴れるといいな。明日も晴れるといいな。明日も晴れるといいな。明日も晴れるといいな。明日も晴れるといいな。明日も晴れるといいな。明日も晴れるといいな。明日も晴れるといいな。明日も晴れるといいな。明日も晴れるといいな。',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //1つ目の投稿
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                images[0],
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.favorite_border),
                            SizedBox(width: 4),
                            Icon(Icons.chat_bubble_outline),
                            SizedBox(width: 4),
                            Icon(Icons.send),
                          ],
                        ),
                        Icon(Icons.more_horiz),
                        Icon(Icons.bookmark_border),
                      ],
                    ),
                    Text(
                      '「いいね！」 ${favorites[0]}件',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      texts[0],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        //2つ目の投稿
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                images[1],
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.favorite_border),
                            SizedBox(width: 4),
                            Icon(Icons.chat_bubble_outline),
                            SizedBox(width: 4),
                            Icon(Icons.send),
                          ],
                        ),
                        Icon(Icons.more_horiz),
                        Icon(Icons.bookmark_border),
                      ],
                    ),
                    Text(
                      '「いいね！」 ${favorites[1]}件',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      texts[1],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }
}