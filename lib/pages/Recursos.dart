import 'package:flutter/material.dart';
import 'package:pilar/pages/ArticlesPage.dart';
import 'package:pilar/pages/DocumentosYPlantillas.dart';
import 'package:pilar/widgets/ReusableWidgets.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Divider(height: 80),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThirdPage()),
                      ),
                  child: invertedCorners(
                      'Documentos y Plantillas', 'images/contracts.png')),
            ),
            Expanded(
              child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ArticlesPage()),
                      ),
                  child:
                      invertedCorners('Accidentes', 'images/accidentes.png')),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThirdPage()),
                      ),
                  child: invertedCorners('Despidos', 'images/despidos.png')),
            ),
            Expanded(
              child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThirdPage()),
                      ),
                  child: invertedCorners('Laboral', 'images/laboral.png')),
            ),
          ],
        ),
        GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdPage()),
                ),
            child: invertedCorners(
                'Incapacidades permanentes', 'images/silla.png')),
      ],
    );
  }
}
