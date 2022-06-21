import 'package:app_21_06_22/widgets/bottle_widget.dart';
import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  final Map<String, dynamic> post;

  const ImageScreen({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Post'),
      ),
      body: BottleWidget( //va chercher dans card_feed_widget
        post: post,
      ),
    );
  }
}
