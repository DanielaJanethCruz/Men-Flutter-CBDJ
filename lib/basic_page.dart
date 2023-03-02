import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo =
      TextStyle(fontSize: 15.0, color: Color.fromARGB(255, 188, 127, 224));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _crearImagen(context),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto2(),
          _crearTexto3(),
          _crearTexto4(),
          _crearTexto5(),
          _crearTexto6(),
        ],
      ),
    ));
  }

  Widget _crearImagen(BuildContext context) {
    return Container(
      width: double.infinity,
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'scroll'),
        child: Image(
          image: AssetImage('FondoPlayList.png'),
          height: 500.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Play-List', style: estiloTitulo),
                  SizedBox(height: 7.0),
                  Text('by: Daniela CB', style: estiloSubTitulo),
                ],
              ),
            ),
            Icon(Icons.star,
                color: Color.fromARGB(255, 68, 17, 77), size: 30.0),
            Text('41', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'Reproducir'),
        _accion(Icons.near_me, 'Guardar'),
        _accion(Icons.share, 'Compartir'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Color.fromARGB(255, 62, 31, 77), size: 30.0),
        SizedBox(height: 5.0),
        Text(
          texto,
          style: TextStyle(
              fontSize: 17.0, color: Color.fromARGB(255, 104, 54, 137)),
        )
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        color: Color.fromARGB(255, 210, 150, 222),
        width: 800, //ancho
        height: 50, //alto
        child: Text(
          'Amor Inconcluso: Morat,TaylorSwift, KeniaOS, Canserbero...',
          textAlign: TextAlign.justify,
          style: TextStyle(
              fontSize: 17.0, color: Color.fromARGB(255, 104, 54, 137)),
        ),
      ),
    );
  }

  Widget _crearTexto2() {
    return SafeArea(
      child: Container(
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        color: Color.fromARGB(255, 237, 158, 215),
        width: 800, //ancho
        height: 50, //alto
        child: Text(
          'Rolitas pa´ Pistiar: BadBunny, Arcangel, Grupo Firme...',
          textAlign: TextAlign.justify,
          style: TextStyle(
              fontSize: 17.0, color: Color.fromARGB(255, 104, 54, 137)),
        ),
      ),
    );
  }

  Widget _crearTexto3() {
    return SafeArea(
      child: Container(
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        color: Color.fromARGB(255, 210, 150, 222),
        width: 800, //ancho
        height: 50, //alto
        child: Text(
          'Belico y Bellaco: JuniorH, Peso Pluma, Luis R, El Rescate... ',
          textAlign: TextAlign.justify,
          style: TextStyle(
              fontSize: 17.0, color: Color.fromARGB(255, 104, 54, 137)),
        ),
      ),
    );
  }

  Widget _crearTexto4() {
    return SafeArea(
      child: Container(
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        color: Color.fromARGB(255, 237, 158, 215),
        width: 800, //ancho
        height: 50, //alto
        child: Text(
          'Rap: Young Miku, WOS, Santa Fe Klan, GeraMX...',
          textAlign: TextAlign.justify,
          style: TextStyle(
              fontSize: 17.0, color: Color.fromARGB(255, 104, 54, 137)),
        ),
      ),
    );
  }

  Widget _crearTexto5() {
    return SafeArea(
      child: Container(
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        color: Color.fromARGB(255, 210, 150, 222),
        width: 800, //ancho
        height: 50, //alto
        child: Text(
          'Pa´llorar: Matisse, Jess&Joy, Sin Bandera, Camila, Reik',
          textAlign: TextAlign.justify,
          style: TextStyle(
              fontSize: 17.0, color: Color.fromARGB(255, 104, 54, 137)),
        ),
      ),
    );
  }

  Widget _crearTexto6() {
    return SafeArea(
      child: Container(
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        color: Color.fromARGB(255, 237, 158, 215),
        width: 800, //ancho
        height: 50, //alto
        child: Text(
          'Rolitas pal Gym: Rot Ken,Jaisean,Kyju,Gena, Simmrs...',
          textAlign: TextAlign.justify,
          style: TextStyle(
              fontSize: 17.0, color: Color.fromARGB(255, 104, 54, 137)),
        ),
      ),
    );
  }
}
