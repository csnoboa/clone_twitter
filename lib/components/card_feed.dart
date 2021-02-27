import 'package:flutter/material.dart';

class CardFeed extends StatefulWidget {
  CardFeed(
      {Key key,
      this.username,
      this.textBody,
      this.numberLikes,
      this.name,
      this.time,
      this.numberComments,
      this.numberRts,
      this.assetImage})
      : super(key: key);

  final String username;
  final String name;
  final String time;
  final String textBody;
  final String assetImage;
  final int numberComments;
  final int numberRts;
  final int numberLikes;

  @override
  _CardFeedState createState() => _CardFeedState(
      username: this.username,
      textBody: this.textBody,
      numberLikes: this.numberLikes,
      name: this.name,
      time: this.time,
      numberComments: this.numberComments,
      numberRts: this.numberRts,
      assetImage: this.assetImage);
}

class _CardFeedState extends State<CardFeed> {
  _CardFeedState(
      {this.username,
      this.textBody,
      this.numberLikes,
      this.name,
      this.time,
      this.numberComments,
      this.numberRts,
      this.assetImage});

  final String username;
  final String name;
  final String time;
  final String textBody;
  final String assetImage;
  final int numberComments;
  final int numberRts;
  final int numberLikes;

  Container borderGrey = new Container(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.grey,
          width: 0.6,
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipOval(
                  child: Container(
                    width: 60,
                    height: 60,
                    child: Image.asset(
                      'assets/images/perfil.jpg',
                    ),
                  ),
                ),
                // Container(width: 15),
                Container(
                  width: MediaQuery.of(context).size.width - (100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                '${this.name}',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(width: 10),
                              Text('${this.username}'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('${this.time}'),
                              Container(width: 5),
                              Icon(Icons.adaptive.more, color: Colors.grey),
                            ],
                          ),
                        ],
                      ),
                      Container(height: 5),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text('${this.textBody}')),
                      Container(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.comment_outlined, color: Colors.grey),
                              Container(width: 5),
                              Text('${this.numberComments}'),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.share_outlined, color: Colors.grey),
                              Container(width: 5),
                              Text('${this.numberRts}'),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.hearing_outlined, color: Colors.grey),
                              Container(width: 5),
                              Text('${this.numberLikes}'),
                            ],
                          ),
                          Icon(Icons.share_outlined, color: Colors.grey),
                          Container(),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          borderGrey,
        ],
      ),
    );
  }
}
