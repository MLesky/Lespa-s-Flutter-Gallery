import 'dart:async';

import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter/material.dart';

class FlutterPdfViewExample extends StatefulWidget {
  const FlutterPdfViewExample({Key? key}) : super(key: key);

  @override
  State<FlutterPdfViewExample> createState() => _FlutterPdfViewExampleState();
}

class _FlutterPdfViewExampleState extends State<FlutterPdfViewExample> {
  final Completer<PDFViewController> _controller =
  Completer<PDFViewController>();

  @override
  Widget build(BuildContext context) {
    return PDFView(
      filePath: 'assets/dart.pdf',
      defaultPage: 1,
      enableSwipe: true,
      swipeHorizontal: true,
      autoSpacing: false,
      pageFling: false,
      onRender: (pages) {
        setState(() {
          pages = pages;
        });
      },
      onViewCreated: (PDFViewController pdfViewController) {
        _controller.complete(pdfViewController);
      },
    );
  }
}
