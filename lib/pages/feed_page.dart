import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('フィード')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FeedPost(
              feedPostUrl:
                  'https://cdn.pixabay.com/photo/2023/11/10/02/30/woman-8378634_960_720.jpg',
              feedPostFavorite: 30222,
              feedPostTest:
                  '今日も楽しかった！今日も楽しかった！今日も楽しかった！今日も楽しかった！今日も楽しかった！今日も楽しかった！今日も楽しかった！今日も楽しかった！今日も楽しかった！今日も楽しかった！今日も楽しかった！今日も楽しかった！',
            ),
            FeedPost(
              feedPostUrl:
                  'https://cdn.pixabay.com/photo/2024/02/08/14/13/sky-8561169_1280.jpg',
              feedPostFavorite: 24621,
              feedPostTest:
                  '明日も晴れるといいな。明日も晴れるといいな。明日も晴れるといいな。明日も晴れるといいな。明日も晴れるといいな。明日も晴れるといいな。明日も晴れるといいな。明日も晴れるといいな。明日も晴れるといいな。明日も晴れるといいな。明日も晴れるといいな。明日も晴れるといいな。',
            ),
          ],
        ),
      ),
    );
  }
}

class FeedPost extends StatelessWidget {
  const FeedPost({
    super.key,
    required this.feedPostUrl,
    required this.feedPostFavorite,
    required this.feedPostTest,
  });

  final String feedPostUrl;
  final int feedPostFavorite;
  final String feedPostTest;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
//ヘッダー
              Row(
                children: [
                  Image.network(
                    'https://img.icons8.com/?size=100&id=32323&format=png&color=000000',
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('instagram'),
                          Icon(Icons.verified, size: 16),
                        ],
                      ),
                      Text('Tokyo'),
                    ],
                  ),
                ],
              ),
              const Icon(Icons.more_horiz),
            ],
          ),
        ),
//投稿
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                feedPostUrl,
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
                      '「いいね！」 ${feedPostFavorite}件',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      feedPostTest,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        //ここまで投稿
      ],
    );
  }
}
