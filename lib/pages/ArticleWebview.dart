import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:pilar/widgets/ReusableWidgets.dart';

class ArticleWebview extends StatefulWidget {
  @override
  _ArticleWebviewState createState() => _ArticleWebviewState();
}

class _ArticleWebviewState extends State<ArticleWebview> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
        appBar: header(context,
            hideBackButton: false,
            isAppTitle: false,
            currentPageTitle: 'Articles',
            shareButton: true),
        url:
            'https://abogadosespecialistasdespidos.com/blog/es/despido-disciplinario',
        withZoom: true);
  }
}
