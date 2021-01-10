import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pilar/constants.dart';
import 'package:pilar/models/Inverted-corners.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';

import '../constants.dart';

/*
This is the header of the screens of the app
 */
AppBar header(context,
    {bool isAppTitle = false,
    bool shareButton = false,
    String currentPageTitle,
    hideBackButton = false}) {
  return AppBar(
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    // automaticallyImplyLeading: hideBackButton ? false : true,
    leading: hideBackButton
        ? null
        : IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
    title: Container(
      padding: EdgeInsets.only(top: 30.0, bottom: 15),
      child: Text(
        isAppTitle ? 'Name of app' : currentPageTitle,
        style: TextStyle(
            color: kTitleColor,
            fontWeight: FontWeight.bold,
            fontFamily: isAppTitle ? kPrimaryFont : kSecondaryFont,
            fontSize: isAppTitle ? 45.0 : 22.0),
        overflow: TextOverflow.ellipsis,
      ),
    ),
    centerTitle: true,
    backgroundColor: kTitleBgColor,
    actions: shareButton
        ? null
        : <Widget>[
            IconButton(
              icon: Icon(
                Icons.share_outlined,
                color: Colors.white,
              ),
              onPressed: () async {
                final ByteData bytes =
                    await rootBundle.load('assets/pdf/samplepdf.pdf');
                await Share.file('Share pdf', 'samplepdf.pdf',
                    bytes.buffer.asUint8List(), 'application/pdf');
              },
            )
          ],
  );
}

/*
This is the container with the inverted corners. It has an image and a title
 */
Container invertedCorners(String title, String image) {
  return Container(
    padding: EdgeInsets.only(top: 25, right: 25, left: 25),
    margin: EdgeInsets.only(top: 15, bottom: 15, right: 15, left: 15),
    height: 190,
    decoration: ShapeDecoration(
      shape: InvertedBorders(radius: 25, rounded: false, pathWidth: 1.5),
      color: kTitleColor,
      shadows: [
        BoxShadow(
          color: Colors.black.withOpacity(0.75),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Image.asset(
          image,
          height: 80,
          width: 60,
        ),
        Divider(height: 13),
        Text(
          title,
          style: TextStyle(
            fontFamily: kSecondaryFont,
            fontSize: 16,
            color: kTitleColor,
            height: 1.3571428571428572,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

/*
This is the container with the text of the body of the app
 */
Container textContainer({String text}) {
  return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 20),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: kSecondaryFont,
          fontSize: 16,
          color: kTextContentColor,
          height: 1.4,
        ),
        textAlign: TextAlign.left,
      ));
}

/*
This is the title section that split the page view into sections
 */
Container secondaryTitle(String title) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    padding: EdgeInsets.only(top: 10, bottom: 10),
    width: double.infinity,
    color: kTitleBgColor,
    child: Column(
      children: [
        Text(
          title.toUpperCase(),
          style: TextStyle(
            fontFamily: kPrimaryFont,
            fontSize: 20,
            color: kTitleColor,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

/*
This is the title section that split the page view into sections with an Icon
 */
Container secondaryTitleWithIcon(String title, String image) {
  return Container(
    width: double.infinity,
    color: kTitleBgColor,
    child: Row(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
          child: Image.asset(
            image,
            height: 45,
            width: 45,
          ),
        ),
        Text(
          title.toUpperCase(),
          style: TextStyle(
            fontFamily: kPrimaryFont,
            fontSize: 20,
            color: kTitleColor,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
