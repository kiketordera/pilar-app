import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pilar/constants.dart';
import 'package:pilar/widgets/ReusableWidgets.dart';

class HomePage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context,
          isAppTitle: false,
          currentPageTitle: 'ABOGADOS ESPECIALISTAS',
          hideBackButton: true,
          shareButton: true),
      backgroundColor: kMainBgColor,
      body: ListView(
        children: [
          textContainer(
            text:
                'En el despacho de Abogado Extranjería Madrid, contamos con abogados especialistas en materia de derecho de inmigración.En la situación actual española, la migración se está intensificando por momentos, por ello es un tema con el que convivimos día y día. Gracias a ello y tras años de trabajo y experiencia, sabemos cómo obtener resultados llenos de profesionalidad y gratitud para nuestro cliente.',
          ),
          secondaryTitle('Especialidades'),
          textContainer(
            text:
                'Ab illo tempore, ab est sed immemorabili. Quo usque tandem abutere, Catilina, patientia nostra? Pellentesque habitant morbi tristique senectus et netus, abio vel iudice vincam, sunt in culpa qui officia. Mercedem aut nummos unde unde extricat, amaras.',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: invertedCorners(
                  'Incapacidad permaanente',
                  'images/contracts.png',
                ),
              ),
              Expanded(
                  child: invertedCorners('Accidentes', 'images/silla.png')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                  child: invertedCorners('Despidos', 'images/despidos.png')),
              Expanded(child: invertedCorners('Laboral', 'images/laboral.png')),
            ],
          ),
          secondaryTitle('RECURSOS LABORALES'),
          textContainer(
            text:
                'Ab illo tempore, ab est sed immemorabili. Quo usque tandem abutere, Catilina, patientia nostra? Pellentesque habitant morbi tristique senectus et netus, abio vel iudice vincam, sunt in culpa qui officia. Mercedem aut nummos unde unde extricat, amaras.',
          )
        ],
      ),
    );
  }
}
