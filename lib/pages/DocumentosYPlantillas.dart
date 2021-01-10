import 'package:flutter/material.dart';
import 'package:pdf_viewer_jk/pdf_viewer_jk.dart';
import 'package:pilar/pages/PdfView.dart';
import 'package:pilar/widgets/progress.dart';

import '../constants.dart';
import '../widgets/ReusableWidgets.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context,
          currentPageTitle: 'Documentos y plantillas',
          hideBackButton: false,
          shareButton: true),
      backgroundColor: kMainBgColor,
      body: ListView(
        children: <Widget>[
          textContainer(
            text:
                'Aquí podrás encontrar modelos ya creados para rellenar con tus datos para hacer mas fácil tu vida burocrática',
          ),
          secondaryTitleWithIcon('TRABAJO Y FORMACIÓN', 'images/contrato.png'),
          GestureDetector(
            child: ListTile(
              title: Text(
                '  Contrato de trabajo indefinido   >',
                style: TextStyle(color: Colors.white),
              ),
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ShowPdf()),
            ),
          ),
          Divider(color: Colors.white),
          ListTile(
            title: Text(
              '  Contrato de trabajo temporal   >',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Divider(color: Colors.white),
          ListTile(
            title: Text(
              '  Contrato de trabajo formativo   >',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Divider(color: Colors.white),
          ListTile(
            title: Text(
              '  Contrato de trabajo de relevo   >',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Divider(color: Colors.white),
          ListTile(
            title: Text(
              '  Contrato de trabajo freelance   >',
              style: TextStyle(color: Colors.white),
            ),
          ),
          secondaryTitleWithIcon('VIVIENDA Y BIENES', 'images/vivienda.png'),
          ListTile(
            title: Text(
              '  Contrato de alquiler   >',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Divider(color: Colors.white),
          ListTile(
            title: Text(
              '  Contrato de alquiler local comercial   >',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Divider(color: Colors.white),
          ListTile(
            title: Text(
              '  Contrato de renting   >',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Divider(color: Colors.white),
          ListTile(
            title: Text(
              '  Contrato de transpaso de negocio   >',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Divider(color: Colors.white),
          ListTile(
            title: Text(
              '  Contrato de venta vehículo   >',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Divider(color: Colors.white),
          ListTile(
            title: Text(
              '  Contrato de deuda   >',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Divider(color: Colors.white),
        ],
      ),
    );
  }
}
