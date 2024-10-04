import 'package:flutter/material.dart';
import 'package:twitter_demo/twitter_feed.dart';

void main() {
  runApp(Twitter());
}

class Twitter extends StatelessWidget {
  const Twitter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Image.network(
            "https://abs.twimg.com/responsive-web/client-web/icon-ios.77d25eba.png",
            width: 42,
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: TwitterFeed(),
      ),
    );
  }
}
