import 'package:flutter/material.dart';

class Informacion extends StatelessWidget {
  const Informacion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Políticas de Privacidad'),
        backgroundColor: Color.fromARGB(255, 79, 12, 118),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Politica(
                name: 'Monetizaciones',
                url_imagen:
                    'https://cdn-icons-png.flaticon.com/512/6968/6968478.png',
                descripcion:
                    'El titular de los derechos de autor decidió monetizar la música elegida,por lo que es posible que aparezcan anuncios en tu video. A veces, el titular de los derechos de autor puede compartir algunos de esos ingresos contigo. Incluso si se aplica esta política, es posible que el video no esté disponible en todas partes o en todos los dispositivos.'),
            Politica(
                name: 'Bloqueo Medio',
                url_imagen:
                    'https://cdn-icons-png.flaticon.com/512/718/718672.png',
                descripcion:
                    'Uno o varios titulares de los derechos de autor no permiten que se use en YouTube la música elegida. Si la utilizas, es posible que tu video se silencie o se inhabilite por completo en YouTube.'),
            Politica(
                name: 'Bloqueo Total',
                url_imagen:
                    'data:image/png;base64,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',
                descripcion:
                    ' Uno o varios titulares de los derechos de autor restringieron los países o las regiones en los que está disponible en YouTube la música elegida. Si la utilizas, tu video no estará disponible donde la música elegida se encuentre bloqueada para YouTube.'),
            Politica(
                name: 'Copyright',
                url_imagen:
                    'data:image/jpeg;base64,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',
                descripcion:
                    'Conjunto de normas y principios que regulan los derechos que la ley concede a los autores por el mero hecho de crear una obra literaria, científica, artística, científica o didáctica, esté publicada o inédita'),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 216, 169, 227),
    );
  }
}

class Politica extends StatelessWidget {
  Politica(
      {required this.name,
      required this.url_imagen,
      required this.descripcion});

  final String name;
  final String descripcion;
  final String url_imagen;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        splashColor: Color.fromARGB(255, 202, 163, 234),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image(
                image: NetworkImage(url_imagen),
                width: 100, //ancho
                height: 100, //alto
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(name),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Text(descripcion),
              )
            ],
          ),
        ),
      ),
    );
  }
}
