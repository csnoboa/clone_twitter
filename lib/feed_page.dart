import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Business',
    ),
    Text(
      'Index 2: School',
    ),
    Text(
      'Index 3: Mail',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.7,
        actions: [
          SizedBox(
            width: 40,
            height: 40,
            child: Image.asset('assets/images/logo.png'),
          ),
          Container(width: 130),
          SizedBox(
            width: 50,
            height: 50,
            child: Image.asset('assets/images/unknown_icon.png'),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipOval(
                child: Image.network(
                  'https://i.pinimg.com/280x280_RS/33/74/bd/3374bd4ca90568d7f940253322433b08.jpg',
                ),
              ),
              accountName: Text('Caique Noboa'),
              accountEmail: Text('@caiqueson'),
            ),
            ListTile(
              title: Text('Perfil'),
              leading: Icon(Icons.person),
              //  Anuncios do Twitter / Configurações e privacidade, Central de Ajuda
            ),
            ListTile(
              title: Text('Listas'),
              leading: Icon(Icons.list),
            ),
            ListTile(
              title: Text('Tópicos'),
              leading: Icon(Icons.logout),
            ),
            ListTile(
              title: Text('Itens Salvos'),
              leading: Icon(Icons.save),
            ),
            ListTile(
              title: Text('Moments'),
              leading: Icon(Icons.store_mall_directory),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline),
            label: ' ',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      body: Stack(
        children: [
          Container(color: Colors.white),
          _widgetOptions.elementAt(_selectedIndex),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}
