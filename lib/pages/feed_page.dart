import 'package:flutter/material.dart';
import 'package:instaclone/pages/feed_page_post.dart';

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
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
            ),
            Post(),
          ],
        ),
      ),
    );
  }
}
