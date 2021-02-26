import 'package:flutter/material.dart';

class DrawerCustomized extends StatefulWidget {
  DrawerCustomized({Key key}) : super(key: key);

  @override
  _DrawerCustomizedState createState() => _DrawerCustomizedState();
}

class _DrawerCustomizedState extends State<DrawerCustomized> {
  TextStyle styleListTile = TextStyle(
    fontSize: 20,
    color: Colors.grey,
  );

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
      child: Drawer(
        child: Stack(
          children: [
            Container(
              color: Colors.white,
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 40.0, left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
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
                        ],
                      ),
                      Container(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'caique with no k',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                      Text(
                        '@caiqueson',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      Container(height: 15),
                      Row(
                        children: [
                          Text(
                            '122 ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Following    ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            '12 ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Followers',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Container(height: 15),
                    ],
                  ),
                ),
                borderGrey,
                ListTile(
                  title: Text(
                    'Profile',
                    style: styleListTile,
                  ),
                  leading: Icon(Icons.person_outline_outlined),
                  //  Anuncios do Twitter / Configurações e privacidade, Central de Ajuda
                ),
                ListTile(
                  title: Text(
                    'Lists',
                    style: styleListTile,
                  ),
                  leading: Icon(Icons.list),
                ),
                ListTile(
                  title: Text(
                    'Topics',
                    style: styleListTile,
                  ),
                  leading: Icon(Icons.message_outlined),
                ),
                ListTile(
                  title: Text(
                    'Bookmarks',
                    style: styleListTile,
                  ),
                  leading: Icon(Icons.bookmark_outline_rounded),
                ),
                ListTile(
                  title: Text(
                    'Moments',
                    style: styleListTile,
                  ),
                  leading: Icon(Icons.flash_on_outlined),
                ),
                Container(height: 10),
                borderGrey,
                ListTile(
                  title: Text(
                    'Settings and privacy',
                    style: styleListTile,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Help Center',
                    style: styleListTile,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
