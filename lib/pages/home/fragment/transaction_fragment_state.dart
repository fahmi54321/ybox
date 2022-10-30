import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:cloud_storage/controllers/amount_controller.dart';
import 'package:cloud_storage/controllers/cek_req_controller.dart';
import 'package:cloud_storage/controllers/user_controller.dart';
import 'package:cloud_storage/models/invoice/invoice_res.dart';
import 'package:cloud_storage/models/login_res.dart';
import 'package:cloud_storage/models/transaction/transaction_res.dart';
import 'package:cloud_storage/network/http_dashoboard.dart';
import 'package:cloud_storage/network/http_transaction.dart';
import 'package:cloud_storage/pages/home/fragment/invoice/pdf__invoice_api.dart';
import 'package:cloud_storage/pages/home/fragment/invoice/pdf_api.dart';
import 'package:cloud_storage/resource/CPColors.dart';
import 'package:cloud_storage/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:get/get.dart' as gets;

class TransactionState extends ChangeNotifier {
  BuildContext context;

  TransactionRes? transactionRes;
  final getAmount = gets.Get.find<AmountController>();
  final cekReq = gets.Get.find<CekReqController>();

  bool isLoadingCekReq = false;
  bool isLoadingInvoice = false;

  int jmlCekReq = 0;

  InvoiceRes invoiceRes = InvoiceRes(
    labelImage: '',
    labelName: '',
    invNo: 0,
    paymentMethod: '',
    accountName: '',
    email: '',
    bank: '',
    nameOnBank: '',
    noRek: '',
    invoiceDate: '',
    invoiceCreate: '',
    amount: '',
    id: '',
  );

  TransactionState({required this.context}) {
    init();
  }

  final PagingController<int, DataTransactionRes> pagingController =
      PagingController(firstPageKey: 1);

  LoginRes? loginRes;

  init() async {
    print('cek req : ${jmlCekReq}');

    getCekReq();

    pagingController.addPageRequestListener((pageKey) {
      getTransaction(pageKey);
    });
  }

  Future<void> pullRefresh() async {
    pagingController.refresh();
  }

  Future<void> getTransaction(int page) async {
    log("getTransaction $page");

    final getUser = gets.Get.find<UserController>();
    loginRes = await getUser.getUserLogin();
    notifyListeners();

    Map<String, dynamic> data = {
      'page': page,
      'id': loginRes?.id.toString(),
    };
    try {
      final resStep1 = await HTTPTransaction().getTransaction(data: data);

      resStep1.fold(
        (e) async {
          await VUtils.showDefaultAlertDialog(
            context,
            title: "Terjadi kesalahan",
            message: e,
          );
        },
        (cat) async {
          final isLastPage = cat.data.length < cat.pagination.perPage;
          if (isLastPage) {
            pagingController.appendLastPage(cat.data);
          } else {
            final nextPageKey = page + 1;

            pagingController.appendPage(cat.data, nextPageKey);
          }
        },
      );
    } catch (error) {
      print(error);
      pagingController.error = error;
    }
  }

  void getCekReq() async {
    isLoadingCekReq = true;
    notifyListeners();

    final resStep1 = await HTTPDashboard().cekReq();

    resStep1.fold(
      (e) async {
        isLoadingCekReq = false;
        notifyListeners();

        await VUtils.showDefaultAlertDialog(
          context,
          title: "Login Failed!",
          message: e,
        );
      },
      (cat) async {
        jmlCekReq = cat;
        isLoadingCekReq = false;
        notifyListeners();
      },
    );
  }

  void getInvoice({required String idTrans}) async {
    isLoadingInvoice = true;
    notifyListeners();

    final resStep1 = await HTTPTransaction().invoice(id: idTrans);

    resStep1.fold(
      (e) async {
        isLoadingInvoice = false;
        notifyListeners();

        await VUtils.showDefaultAlertDialog(
          context,
          title: "Failed!",
          message: e,
        );
      },
      (cat) async {
        invoiceRes = cat;

        SavePdf savePdf = await PdfInvoiceApi.generate(cat);

        isLoadingInvoice = false;
        notifyListeners();

        print(savePdf.file);

        PdfApi.openPdf(
          context,
          savePdf,
          cat,
        );

      },
    );
  }

  Widget statusIconItemTrans(int status) {
    if (status == 0) {
      // pending
      return Icon(
        Icons.pending,
        color: Theme.of(context).colorScheme.onPrimary,
        size: 40,
      );
    } else if (status == 1) {
      // reject
      return Icon(
        Icons.close,
        color: Theme.of(context).colorScheme.onPrimary,
        size: 40,
      );
    } else if (status == 2) {
      // done
      return Icon(
        Icons.done_outline_outlined,
        color: Theme.of(context).colorScheme.onPrimary,
        size: 40,
      );
    } else {
      return Icon(
        Icons.pending,
        color: Theme.of(context).colorScheme.onPrimary,
        size: 40,
      );
    }
  }

  Color statusIconColorTrans(int status) {
    if (status == 0) {
      // pending
      return CPYellowColor;
    } else if (status == 1) {
      // reject
      return CPRedColor;
    } else if (status == 2) {
      // done
      return CPGreen;
    } else {
      return CPYellowColor;
    }
  }
}
