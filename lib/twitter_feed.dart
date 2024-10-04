import 'package:flutter/material.dart';

class TwitterFeed extends StatelessWidget {
  const TwitterFeed({super.key});

  final List<Map<String, String>> feedData = const [
    {
      "profilePic":
          "https://pbs.twimg.com/profile_images/1815749056821346304/jS8I28PL_200x200.jpg",
      "displayName": "Elon Musk",
      "username": "elonmusk",
      "content": "Today is wonderful day, lets go for a walk.",
      "tweetImage": "https://pbs.twimg.com/media/Fo-ip0FaIAAf0v1.jpg",
      "tweetTime": "45min",
      "comments": "183",
      "retweets": "190",
      "likes": "5K",
      "analytics": "12K",
    },
    {
      "profilePic":
          "https://pbs.twimg.com/profile_images/1815749056821346304/jS8I28PL_200x200.jpg",
      "displayName": "Elon Musk",
      "username": "elonmusk",
      "content": "Today is wonderful day, lets go for a walk.",
      "tweetImage": "https://pbs.twimg.com/media/Fo-ip0FaIAAf0v1.jpg",
      "tweetTime": "45min",
      "comments": "183",
      "retweets": "190",
      "likes": "5K",
      "analytics": "12K",
    },
    {
      "profilePic":
          "https://pbs.twimg.com/profile_images/1815749056821346304/jS8I28PL_200x200.jpg",
      "displayName": "Elon Musk",
      "username": "elonmusk",
      "content": "Today is wonderful day, lets go for a walk.",
      "tweetImage": "https://pbs.twimg.com/media/Fo-ip0FaIAAf0v1.jpg",
      "tweetTime": "45min",
      "comments": "183",
      "retweets": "190",
      "likes": "5K",
      "analytics": "12K",
    },
    {
      "profilePic":
          "https://pbs.twimg.com/profile_images/1815749056821346304/jS8I28PL_200x200.jpg",
      "displayName": "Elon Musk",
      "username": "elonmusk",
      "content": "Today is wonderful day, lets go for a walk.",
      "tweetImage": "https://pbs.twimg.com/media/Fo-ip0FaIAAf0v1.jpg",
      "tweetTime": "45min",
      "comments": "183",
      "retweets": "190",
      "likes": "5K",
      "analytics": "12K",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: feedData.length,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.black,
          child: Column(
            children: [
              Divider(height: 0.4),
              SizedBox(height: 8),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(feedData[index]["profilePic"]!),
                  radius: 26,
                ),
                title: Row(
                  children: [
                    Text(
                      feedData[index]["displayName"]!,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "  @" + feedData[index]["username"]!,
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(width: 4),
                    Icon(Icons.circle, size: 3, color: Colors.grey),
                    Text(
                      " " + feedData[index]["tweetTime"]!,
                      style: TextStyle(color: Colors.grey),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_horiz, color: Colors.grey),
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
                    ),
                  ],
                ),
                titleAlignment: ListTileTitleAlignment.top,
                textColor: Colors.white,
                subtitle: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        feedData[index]["content"]!,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
                isThreeLine: true,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 82.0,
                  right: 15,
                  bottom: 10,
                ),
                child: Container(
                  width: 500,
                  height: 300,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.network(feedData[index]["tweetImage"]!),
                ),
              ),
              Row(
                children: [
                  SizedBox(width: 75),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.chat_rounded),
                    color: Colors.grey,
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                  ),
                  Text(
                    feedData[index]["comments"]!,
                    style: TextStyle(color: Colors.grey),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.loop_rounded),
                    color: Colors.grey,
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                  ),
                  Text(
                    feedData[index]["retweets"]!,
                    style: TextStyle(color: Colors.grey),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_outline_rounded),
                    color: Colors.grey,
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                  ),
                  Text(
                    feedData[index]["likes"]!,
                    style: TextStyle(color: Colors.grey),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.bar_chart_rounded),
                    color: Colors.grey,
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                  ),
                  Text(
                    feedData[index]["analytics"]!,
                    style: TextStyle(color: Colors.grey),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.bookmark_outline_rounded),
                    color: Colors.grey,
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.share_rounded),
                    color: Colors.grey,
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                  ),
                ],
              ),
              SizedBox(height: 5),
            ],
          ),
        );
      },
    );
  }
}
