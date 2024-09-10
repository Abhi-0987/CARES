import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class PdfView extends StatefulWidget {
  const PdfView({
    super.key,
  });

  @override
  State<PdfView> createState() => _PdfViewState();
}

class _PdfViewState extends State<PdfView> {
  final pdfPinchController = PdfControllerPinch(
    document: PdfDocument.openAsset('assets/Cares.pdf'),
  );
  @override
  Widget build(BuildContext context) {
    return PdfViewPinch(
      controller: pdfPinchController,
    );
  }
}
