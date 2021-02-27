import 'package:clone_twitter/feed_page.dart';
import 'package:clone_twitter/login_page.dart';
import 'package:clone_twitter/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter Clone',
      initialRoute: '/feed',
      routes: {
        '/': (context) => InitialPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/feed': (context) => FeedPage(),
      },
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.blue),
            color: Color(0xFFFFFFFF),
            elevation: 0),
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class InitialPage extends StatefulWidget {
  InitialPage({Key key}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xFFFFFFFF),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  width: 45,
                  height: 45,
                  child: Image.asset(
                    'assets/images/logo.png',
                  ),
                ),
              ),
              Container(
                height: 110,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Text(
                  "See what's happening in the world right now.",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Container(
                    width: 500,
                    height: 40,
                    child: RaisedButton(
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: Text(
                        'Create account',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 160,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  children: [
                    Text(
                      'Have an account already?',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(context, '/login');
                        });
                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
