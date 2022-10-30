import 'dart:io';

import 'package:cloud_storage/models/invoice/invoice_res.dart';
import 'package:cloud_storage/pages/home/fragment/invoice/pdf_api.dart';
import 'package:cloud_storage/resource/strings.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class PdfInvoiceApi {
  static Future<SavePdf> generate(InvoiceRes invoiceRes) async {
    String labelmage = invoiceRes.labelImage.replaceAll('public', 'storage');

    pw.Font font = await PdfGoogleFonts.poppinsRegular();
    final fontBold = await PdfGoogleFonts.poppinsBold();
    final image = await networkImage(
      '${APP_URL + labelmage}',
    );

    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: ((context) =>
            buildInvoicePage(image, font, fontBold, invoiceRes)),
      ),
    );

    return PdfApi.saveDocument(name: 'transaction${invoiceRes.id}.pdf', pdf: pdf);
  }

  static pw.Widget buildInvoicePage(
    pw.ImageProvider image,
    pw.Font font,
    pw.Font fontBold,
    InvoiceRes invoiceRes,
  ) {
    return pw.Column(
      children: [
        buildHeader(image, font, fontBold, invoiceRes),
        buildSizeBox(10),
        buildDivider(),
        buildSizeBox(10),
        buildTitleInvoice(font, fontBold, invoiceRes),
        buildSizeBox(10),
        buildDeskripsi(font, fontBold, invoiceRes),
      ],
    );
  }

  static buildHeader(
    pw.ImageProvider image,
    pw.Font font,
    pw.Font fontBold,
    InvoiceRes invoiceRes,
  ) {
    return pw.Row(
      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
      children: [
        pw.Image(image, width: 150, height: 150),
        pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Container(
              padding: const pw.EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 5,
              ),
              color: PdfColors.green,
              child: pw.Text(
                'PAID',
                style: pw.TextStyle(
                  font: fontBold,
                  color: PdfColors.white,
                  fontSize: 16,
                ),
              ),
            ),
            pw.SizedBox(height: 5),
            pw.Text(
              'Invoice No. ${invoiceRes.invNo}',
              style: pw.TextStyle(
                font: font,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    );
  }

  static pw.Widget buildTitleInvoice(
    pw.Font font,
    pw.Font fontBold,
    InvoiceRes invoiceRes,
  ) {
    return pw.Column(
      children: [
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text(
                  'Invoice To ',
                  style: pw.TextStyle(
                    font: font,
                    fontSize: 14,
                  ),
                ),
                pw.Text(
                  invoiceRes.labelName,
                  style: pw.TextStyle(
                    font: font,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text(
                  'Pay to To ',
                  style: pw.TextStyle(
                    font: font,
                    fontSize: 14,
                  ),
                ),
                pw.Text(
                  invoiceRes.accountName,
                  style: pw.TextStyle(
                    font: font,
                    fontSize: 18,
                  ),
                ),
                buildSizeBox(20),
                pw.Text(
                  invoiceRes.bank,
                  style: pw.TextStyle(
                    font: font,
                    fontSize: 14,
                  ),
                ),
                pw.Text(
                  'a/n ${invoiceRes.nameOnBank}',
                  style: pw.TextStyle(
                    font: font,
                    fontSize: 14,
                  ),
                ),
                pw.Text(
                  invoiceRes.noRek,
                  style: pw.TextStyle(
                    font: font,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
        buildSizeBox(5),
        buildDivider(),
        buildSizeBox(5),
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            pw.Text(
              'Payment Method : ${invoiceRes.paymentMethod}',
              style: pw.TextStyle(
                font: font,
                fontSize: 14,
              ),
            ),
            pw.Text(
              'Invoice Date : ${invoiceRes.invoiceDate}',
              style: pw.TextStyle(
                font: font,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    );
  }

  static pw.Widget buildSizeBox(double height) {
    return pw.SizedBox(height: height);
  }

  static pw.Widget buildDivider() {
    return pw.Divider(
      thickness: 2,
      color: PdfColors.grey,
    );
  }

  static pw.Widget buildDeskripsi(
    pw.Font font,
    pw.Font fontBold,
    InvoiceRes invoiceRes,
  ) {
    return pw.Column(
      children: [
        pw.Container(
          color: PdfColors.green,
          padding: const pw.EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            children: [
              pw.Text(
                'Description',
                style: pw.TextStyle(
                  font: fontBold,
                  fontSize: 14,
                ),
              ),
              pw.Text(
                'Amount',
                style: pw.TextStyle(
                  font: fontBold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        buildSizeBox(10),
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            pw.Text(
              'Royalty Payment(${invoiceRes.invoiceCreate})',
              style: pw.TextStyle(
                font: font,
                fontSize: 14,
              ),
            ),
            pw.Text(
              invoiceRes.amount,
              style: pw.TextStyle(
                font: font,
                fontSize: 14,
              ),
            ),
          ],
        ),
        buildSizeBox(20),
        pw.Row(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Text(
              'Total',
              style: pw.TextStyle(
                font: font,
                fontSize: 14,
              ),
            ),
            pw.SizedBox(width: 20),
            pw.Text(
              invoiceRes.amount,
              style: pw.TextStyle(
                font: fontBold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
