import 'dart:ui';

import 'package:flutter/material.dart';

Stack imageTextOverlay(double width) {
  return Stack(
    children: [
      Container(
          width: width,
          height: 200,
          child: Image.network(
            'https://picsum.photos/id/1/300',
            fit: BoxFit.fitWidth,
          )),
      Positioned.fill(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                width: width,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0x7d000000),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      ''' La clausula suelo se declara illegal en Espana a partir de ''',
                      maxLines: 8,
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffffffff))),
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
