import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:menu_dash/scroll_page.dart';
import 'informacion.dart';
import 'carreras.dart';
import 'artistas.dart';
import 'basic_page.dart';
import 'scroll_page.dart';
import 'plataformas.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      routes: <String, WidgetBuilder>{
        "/inicio": (BuildContext context) => MyApp(),
        "/informacion": (BuildContext context) => Informacion(),
        "/carreras": (BuildContext context) => Carreras(),
        "/becas": (BuildContext context) => Becas(),
        "/basica": (BuildContext context) => BasicoPage(),
        "/scroll": (BuildContext context) => ScrollPage(),
        "/plataformas": (BuildContext context) => PlataformaPage(),
      },
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dani Music'),
        backgroundColor: Color.fromARGB(255, 79, 12, 118),
      ),
      backgroundColor: Color.fromARGB(255, 216, 169, 227),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                'Daniela CB',
                style: TextStyle(fontSize: 17),
              ),
              accountEmail: Text('daniela122cruz.11@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://scontent.fcyw4-1.fna.fbcdn.net/v/t39.30808-6/325935194_556263246414362_4250310397934015175_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEJxqG8HDY6sOZ9AlkO9dvxu8LwvfcJBjq7wvC99wkGOhKdXHiFm1OWj8FrH5MTQc2PBZ5ZHkHIDONYWKHPVce6&_nc_ohc=196w5j06Oh0AX9yYdNR&_nc_oc=AQl5clgDAldzVYM5bCEcPtIRhujyau7W7vNk6fxhp0NVAIWs3FY9IQa_5P7oRI4bNKEk6xVry0X_sjCVXUINLJ3E&_nc_ht=scontent.fcyw4-1.fna&oh=00_AfBfdtpyZZb9hvsoPlCbEm4wGxrY8QozTexFL4OwzFzmTg&oe=6401E6B2'),
              ),
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 56, 55, 116)),
            ),
            ListTile(
              leading: Icon(Icons.pageview_outlined),
              iconColor: Color.fromARGB(255, 99, 97, 229),
              title: Text('Play-Lists'),
              onTap: () {
                Navigator.pushNamed(context, '/basica');
              },
            ),
            ListTile(
              leading: Icon(Icons.music_note),
              iconColor: Color.fromARGB(255, 99, 97, 229),
              title: Text('Sobre Mi'),
              onTap: () {
                Navigator.pushNamed(context, '/scroll');
              },
            ),
            ListTile(
              leading: Icon(Icons.menu_book),
              iconColor: Color.fromARGB(255, 99, 97, 229),
              title: Text('Albums'),
              onTap: () {
                Navigator.pushNamed(context, '/carreras');
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              iconColor: Color.fromARGB(255, 99, 97, 229),
              title: Text('Artistas'),
              onTap: () {
                Navigator.pushNamed(context, '/becas');
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              iconColor: Color.fromARGB(255, 99, 97, 229),
              title: Text('Salir'),
              onTap: () {
                if (Platform.isAndroid) {
                  SystemNavigator.pop();
                } else {
                  exit(0);
                }
              },
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            MyMenu(
                title: 'Play-List',
                icon: Icons.pageview_rounded,
                iconColor: Colors.deepPurple,
                ruta: '/basica'),
            MyMenu(
              title: 'Politicas de Uso',
              icon: Icons.info_outline,
              iconColor: Colors.deepPurple,
              ruta: '/informacion',
            ),
            MyMenu(
                title: 'Albums ',
                icon: Icons.menu_book,
                iconColor: Colors.deepPurple,
                ruta: '/carreras'),
            MyMenu(
              title: 'Creador',
              icon: Icons.person,
              iconColor: Colors.deepPurple,
              ruta: '/scroll',
            ),
            MyMenu(
                title: 'Artistas',
                icon: Icons.person,
                iconColor: Colors.deepPurple,
                ruta: '/becas'),
            MyMenu(
              title: 'Otras Plataformas',
              icon: Icons.animation,
              iconColor: Colors.deepPurple,
              ruta: '/plataformas',
            ),
          ],
        ),
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  MyMenu(
      {required this.title,
      required this.icon,
      required this.iconColor,
      required this.ruta});

  final String title;
  final IconData icon;
  final MaterialColor iconColor;
  final String ruta;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, ruta);
        },
        splashColor: Colors.green,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 70,
                color: iconColor,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 17),
              )
            ],
          ),
        ),
      ),
    );
  }
}
