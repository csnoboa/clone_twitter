import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          SizedBox(
            width: 40,
            height: 40,
            child: Image.asset('assets/images/logo.png'),
          ),
          Container(width: 30),
          TextButton(
            onPressed: null,
            child: Text('Sign up',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                )),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.adaptive.more,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Log in to Twitter.',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(height: 10),
                TextFormField(
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    labelText: 'Phone, email or username',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(height: 10),
                TextFormField(
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(height: 15),
                Center(
                  child: TextButton(
                    onPressed: null,
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
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
                  width: 80,
                  height: 30,
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue[300],
                    child: Text(
                      "Log in",
                      style: TextStyle(fontSize: 16),
                    ),
                    onPressed: () {},
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
