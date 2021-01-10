import 'package:flutter/material.dart';
import 'package:pilar/pages/ArticlesPage.dart';
import 'package:pilar/pages/DocumentosYPlantillas.dart';

import '../constants.dart';
import '../widgets/ReusableWidgets.dart';

class ProfilePage extends StatelessWidget {
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
                  child: invertedCorners('Mis casos', 'images/contracts.png')),
            ),
            Expanded(
              child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ArticlesPage()),
                      ),
                  child: invertedCorners(
                      'Notifications', 'images/accidentes.png')),
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
                  child: invertedCorners('Liamanos', 'images/despidos.png')),
            ),
            Expanded(
              child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThirdPage()),
                      ),
                  child: invertedCorners('Whatsapp', 'images/laboral.png')),
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
                'abogadapilarrmos@gmail.com', 'images/silla.png')),
        GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdPage()),
                ),
            child: invertedCorners('Cerrar Sesion', 'images/silla.png')),
      ],
    );
  }
}
