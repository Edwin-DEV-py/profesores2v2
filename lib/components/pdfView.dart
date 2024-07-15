// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfView extends StatefulWidget {
  final String pdfPath;

  const PdfView({super.key, required this.pdfPath});

  @override
  State<PdfView> createState() => _PdfViewState();
}

class _PdfViewState extends State<PdfView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Vista de PDF"),
      ),
      body: SfPdfViewer.asset(widget.pdfPath),
    );
  }
}