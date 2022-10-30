import 'dart:io';
import 'dart:typed_data';

import 'package:cloud_storage/models/invoice/invoice_res.dart';
import 'package:cloud_storage/pages/home/fragment/pdf_view_pager.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart';
import 'package:http/http.dart' as http;

class SavePdf{
  File file;
  Uint8List bytes;

  SavePdf({required this.file,required this.bytes});
}

class PdfApi {
  // static Future<File> saveDocumentToStorage({
  //   required String name,
  //   required Document pdf,
  // }) async {
  //   final bytes = await pdf.save();
  //
  //   final dir = await getApplicationDocumentsDirectory();
  //   final file = File('${dir.path}/$name');
  //
  //   await file.writeAsString(bytes);
  //
  //   return file;
  // }

  static Future<SavePdf> saveDocument({
    required String name,
    required Document pdf,
  }) async {
    Uint8List bytes = await pdf.save();

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name');

    await file.writeAsBytes(bytes);

    SavePdf savePdf = SavePdf(file: file, bytes: bytes);

    return savePdf;
  }

  static Future<File> loadNetwork(String url) async {
    final response = await http.get(
      Uri.parse(url),
    );
    final bytes = response.bodyBytes;

    return _storeFile(url, bytes);
  }

  static Future<File> _storeFile(String url, List<int> bytes) async {
    final fileName = basename(url);
    final dir = await getApplicationDocumentsDirectory();

    final file = File('${dir.path}/$fileName');
    await file.writeAsBytes(bytes, flush: true);
    return file;
  }

  static openPdf(BuildContext context, SavePdf file,InvoiceRes invoiceRes) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => PDFViewPager(
            savePdf: file,
            invoiceRes: invoiceRes,
          ),
        ),
      );
}
