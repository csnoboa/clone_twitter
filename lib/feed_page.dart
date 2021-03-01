import 'package:clone_twitter/components/card_feed.dart';
import 'package:clone_twitter/components/drawer.dart';
import 'package:clone_twitter/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    SingleChildScrollView(
      child: Column(
        children: [
          CardFeed(
            name: 'milena',
            username: '@wwwmlna',
            assetImage: 'assets/images/perfil_milena.jpg',
            time: '1m',
            numberComments: 38,
            numberRts: 740,
            textBody:
                'a única coisa q eu sinto falta na minha vida escolar eh dos salgados de qualidade duvidosa da cantina da escola',
            numberLikes: 3.7,
            bigNumber: true,
            verified: false,
            retweet: false,
          ),
          CardFeed(
            name: 'Cid Cidoso',
            username: '@naosalvo',
            assetImage: 'assets/images/perfil_cid.jpg',
            time: '2m',
            numberComments: 931,
            numberRts: 150,
            textBody:
                'Existe alguma confirmação q responda a questão: \nQUEM TEM A MAIOR CABEÇA DO BRASIL?',
            numberLikes: 3.6,
            bigNumber: true,
            verified: true,
            retweet: false,
          ),
          CardFeed(
            name: 'Andre Noel',
            username: '@ProgramadorREAL',
            assetImage: 'assets/images/perfil_programador.jpg',
            time: '25 de fev',
            numberComments: 6,
            numberRts: 0,
            textBody:
                'Acabei de ver que ontem foi o aniversário da minha defesa de mestrado!',
            numberLikes: 210,
            bigNumber: false,
            verified: false,
            retweet: false,
          ),
          CardFeed(
            name: 'Prefeitura Curitiba',
            username: '@Curitiba',
            assetImage: 'assets/images/perfil_curitiba.jpg',
            time: '4h',
            numberComments: 0,
            numberRts: 0,
            textBody:
                'Feira do Largo aos sábados e online são alternativas para compras',
            numberLikes: 12,
            bigNumber: false,
            verified: true,
            retweet: false,
          ),
          CardFeed(
            name: 'Caique Noboa',
            username: '@caiqueson',
            assetImage: 'assets/images/perfil.jpg',
            time: '5h',
            numberComments: 0,
            numberRts: 2,
            textBody: 'Ahhhh que sono',
            numberLikes: 8,
            bigNumber: false,
            verified: false,
            retweet: false,
          ),
        ],
      ),
    ),
    Text(
      'Index 1: Search',
    ),
    Text(
      'Index 2: Notifications',
    ),
    Text(
      'Index 3: Messages',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      if (index == 3) {
        floatingButtonIcon = Icon(Icons.message_outlined);
      } else {
        floatingButtonIcon = Icon(MyFlutterApp.feather);
      }
      _selectedIndex = index;
    });
  }

  Icon floatingButtonIcon = Icon(MyFlutterApp.feather);

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
      drawer: DrawerCustomized(),
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
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        selectedFontSize: 14,
        unselectedFontSize: 14,
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
        child: floatingButtonIcon,
      ),
    );
  }
}
