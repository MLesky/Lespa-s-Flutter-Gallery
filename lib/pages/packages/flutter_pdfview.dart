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
      defaultPage: 0,
      enableSwipe: true,
      swipeHorizontal: true,
      autoSpacing: false,
      pageFling: false,
      onRender: (pages) {
        print('Render $pages');
        setState(() {
          pages = pages;
        });
      },
      onViewCreated: (PDFViewController pdfViewController) {
        print('created view');
        _controller.complete(pdfViewController);
      },
        onError: (error){
          print('Failed to load $error');
        },
        onPageError: (page, error){
          print('Failed to load Page $page with error $error');
        }
    );
  }
}
