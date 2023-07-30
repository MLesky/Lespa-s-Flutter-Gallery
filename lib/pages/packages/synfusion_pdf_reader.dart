import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class SyncfusionPdfReaderExample extends StatelessWidget {
  const SyncfusionPdfReaderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
      'assets/dart.pdf',
    );
  }
}
