import 'package:flutter/material.dart';
import 'main.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[_pagina1(), _pagina2(context), _pagina3(context)],
      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(232, 223, 211, 1),
    );
  }

  Widget _imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('descarga.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textos() {
    final estiloTexto =
        TextStyle(color: Color.fromARGB(255, 53, 35, 83), fontSize: 50.0);
    final estiloSubTitulo =
        TextStyle(fontSize: 15.0, color: Color.fromARGB(255, 188, 127, 224));

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Text('Bienvenidos', style: estiloTexto),
          Text('by: Daniela CB', style: estiloSubTitulo),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down,
              size: 70.0, color: Color.fromARGB(255, 38, 11, 53))
        ],
      ),
    );
  }

  Widget _pagina2(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.all(5),
      elevation: 10,
      color: Color.fromRGBO(242, 190, 245, 0.533),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: <Widget>[
            FadeInImage(
              image: AssetImage('Danis.jpeg'),
              placeholder: AssetImage('loading.gif'),
              fit: BoxFit.cover,
              height: 500,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text('Daniela CB'),
            )
          ],
        ),
      ),
    );
  }

  Widget _pagina3(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      color: Color.fromRGBO(242, 190, 245, 0.533),
      child: Column(children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('Redes Sociales'),
          subtitle: Text(
              'Facebook: Daniela CB, Instagram: daniela.cb19, Twitter: @Danis_190103'),
          leading: Icon(Icons.contact_page),
        ),
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('¿Quien soy?'),
          subtitle: Text(
              'Soy estudiante de la UTNG, cursando actualmente el 5to cuatrimestre en la Carrera Desarrollo de Software Multiplataforma'),
          leading: Icon(Icons.person_3),
        ),
      ]),
    );
  }
}
