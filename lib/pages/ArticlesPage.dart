import 'package:flutter/material.dart';
import 'package:pilar/pages/ArticleWebview.dart';
import 'package:pilar/widgets/ReusableImageTextOverlay.dart';

import '../constants.dart';
import '../widgets/ReusableWidgets.dart';

class ArticlesPage extends StatefulWidget {
  @override
  _ArticlesPageState createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBgColor,
      appBar: header(context,
          isAppTitle: false, currentPageTitle: 'Artículos', shareButton: true),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  GestureDetector(
                    child: imageTextOverlay(MediaQuery.of(context).size.width),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ArticleWebview()),
                    ),
                  ),
                  textContainer(
                    text:
                        'La confianza en el director del banco ha ocasionado grandes perjuicios económicos a muchas familiasDe hecho, ha sido esta táctica la que ha originado muchas de las cláusulas suelo hoy objeto de reclamación',
                  ),
                  Divider(
                    color: kTitleColor,
                  ),
                  Row(
                    children: [
                      imageTextOverlay(null),
                      Expanded(
                        child: textContainer(
                          text:
                              'La confianza en el director del banco ha ocasionado grandes perjuicios económicos a muchas familiasDe hecho, ha sido esta táctica la que ha originado muchas de las cláusulas suelo hoy objeto de reclamación',
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: kTitleColor,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: textContainer(
                          text:
                              'La confianza en el director del banco ha ocasionado grandes perjuicios económicos a muchas familiasDe hecho, ha sido esta táctica la que ha originado muchas de las cláusulas suelo hoy objeto de reclamación',
                        ),
                      ),
                      imageTextOverlay(null),
                    ],
                  ),
                  Divider(
                    color: kTitleColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
