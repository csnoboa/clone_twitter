import 'package:flutter/material.dart';
import 'package:clone_twitter/my_flutter_app_icons.dart';

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
      this.assetImage,
      this.bigNumber,
      this.verified,
      this.retweet})
      : super(key: key);

  final String username;
  final String name;
  final String time;
  final String textBody;
  final String assetImage;
  final int numberComments;
  final int numberRts;
  final double numberLikes;
  final bool bigNumber;
  final bool retweet;
  final bool verified;

  @override
  _CardFeedState createState() => _CardFeedState(
      username: this.username,
      textBody: this.textBody,
      numberLikes: this.numberLikes,
      name: this.name,
      time: this.time,
      numberComments: this.numberComments,
      numberRts: this.numberRts,
      assetImage: this.assetImage,
      bigNumber: this.bigNumber,
      verified: this.verified,
      retweet: this.retweet);
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
      this.assetImage,
      this.bigNumber,
      this.verified,
      this.retweet});

  final String username;
  final String name;
  final String time;
  final String textBody;
  final String assetImage;
  final int numberComments;
  final int numberRts;
  bool bigNumber;
  bool retweet;
  bool verified;
  double numberLikes;

  Icon iconHeart = Icon(MyFlutterApp.heart_empty_1, color: Colors.grey);
  bool liked = false;

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
            padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipOval(
                  child: Container(
                    width: 60,
                    height: 60,
                    child: Image.asset(
                      this.assetImage,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - (100),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
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
                              Container(
                                width: verified ? 35 : 0,
                                child: IconButton(
                                  icon: verified
                                      ? Icon(Icons.verified, color: Colors.blue)
                                      : Icon(Icons.verified,
                                          color: Colors.white, size: 0),
                                  onPressed: null,
                                ),
                              ),
                              Container(width: 5),
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
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text('${this.textBody}')),
                      Container(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(MyFlutterApp.comment_empty,
                                  color: Colors.grey),
                              Container(width: 5),
                              Text('${this.numberComments}'),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(MyFlutterApp.retweet_1, color: Colors.grey),
                              Container(width: 15),
                              Text('${this.numberRts}'),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: iconHeart,
                                onPressed: () {
                                  setState(
                                    () {
                                      if (liked) {
                                        iconHeart = Icon(
                                          MyFlutterApp.heart_empty_1,
                                          color: Colors.grey,
                                        );
                                        liked = false;
                                        if (!bigNumber) {
                                          numberLikes = numberLikes - 1.0;
                                        }
                                      } else {
                                        iconHeart = Icon(
                                          MyFlutterApp.heart_1,
                                          color: Colors.red,
                                        );
                                        if (!bigNumber) {
                                          numberLikes = numberLikes + 1.0;
                                        }
                                        liked = true;
                                      }
                                    },
                                  );
                                },
                              ),
                              Text(bigNumber
                                  ? '${this.numberLikes} K'
                                  : '${this.numberLikes.round()}'),
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
