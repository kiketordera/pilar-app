import 'package:flutter/material.dart';
import 'package:pdf_viewer_jk/pdf_viewer_jk.dart';
import 'package:pilar/widgets/progress.dart';
import '../widgets/ReusableWidgets.dart';

class ShowPdf extends StatefulWidget {
  @override
  _ShowPdfState createState() => _ShowPdfState();
}

class _ShowPdfState extends State<ShowPdf> {
  String url = 'http://www.pdf995.com/samples/pdf.pdf';
  String pdfAsset = 'assets/pdf/samplepdf.pdf';
  PDFDocument _doc;
  bool loading = false;
  bool displayPdf = false;
  void showPdf() async {
    setState(() {
      loading = true;
      // displayPdf = false;
    });
    final doc = await PDFDocument.fromAsset(pdfAsset);
    setState(() {
      loading = false;
      displayPdf = true;
      _doc = doc;
    });
  }

  @override
  void initState() {
    super.initState();
    showPdf();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context,
          currentPageTitle: '', hideBackButton: false, shareButton: false),
      body: loading
          ? circularProgress()
          : PDFViewer(
              document: _doc,
            ),
    );
  }
}
