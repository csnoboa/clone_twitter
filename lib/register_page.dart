import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            width: MediaQuery.of(context).size.width / 2,
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 40,
              height: 40,
              child: Image.asset('assets/images/logo.png'),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(color: Colors.white),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create your account',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(height: 130),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Name',
                  ),
                ),
                Container(height: 5),
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '50',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(height: 20),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Phone number or email address',
                  ),
                ),
                Container(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Date of birth',
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.bottomRight,
            child: Container(
              alignment: Alignment.centerRight,
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.grey,
                    width: 0.6,
                  ),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  width: 70,
                  height: 30,
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue[300],
                    child: Text(
                      "Next",
                      style: TextStyle(fontSize: 16),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/feed');
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
