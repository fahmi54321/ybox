import 'package:cloud_storage/controllers/user_controller.dart';
import 'package:cloud_storage/models/general/bank_res.dart';
import 'package:cloud_storage/models/general/label_res.dart';
import 'package:cloud_storage/models/login_res.dart';
import 'package:cloud_storage/network/http_album.dart';
import 'package:cloud_storage/network/http_general.dart';
import 'package:cloud_storage/network/http_transaction.dart';
import 'package:cloud_storage/pages/home/berhasil_page.dart';
import 'package:cloud_storage/utils/utils.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:get/get.dart' as gets;

class AddTransactionState extends ChangeNotifier {
  BuildContext context;

  List<LabelRes> listLabel = [];
  List<BankRes> listBank = [];
  bool isLoading = false;
  bool isLoadingButton = false;
  LabelRes? selectLabel;
  BankRes? selectBank;

  TextEditingController accNumberInputName = TextEditingController();
  TextEditingController accNameInputName = TextEditingController();

  AddTransactionState(
    this.context,
  ) {
    init();
  }

  init() {
    getLabel();
    getBank();
  }

  void getLabel() async {
    isLoading = true;
    notifyListeners();

    final resStep1 = await HTTPGeneral().getLabelTransaksi();
    isLoading = false;

    notifyListeners();
    resStep1.fold(
      (e) async {
        isLoading = false;
        notifyListeners();

        await VUtils.showDefaultAlertDialog(
          context,
          title: "Login Failed!",
          message: e,
        );
      },
      (cat) async {
        listLabel = cat;
        selectLabel = cat[0];
        isLoading = false;
        notifyListeners();
      },
    );
  }

  void getBank() async {
    isLoading = true;
    notifyListeners();

    final resStep1 = await HTTPGeneral().getBank();
    isLoading = false;

    notifyListeners();
    resStep1.fold(
      (e) async {
        isLoading = false;
        notifyListeners();

        await VUtils.showDefaultAlertDialog(
          context,
          title: "Login Failed!",
          message: e,
        );
      },
      (cat) async {
        listBank = cat;
        selectBank = cat[0];
        isLoading = false;
        notifyListeners();
      },
    );
  }

  void cekValidasiTransaksiForm() async {
    isLoadingButton = true;
    notifyListeners();

    if (listBank.isEmpty) {
      isLoadingButton = false;
      notifyListeners();

      showFlushBar('Bank tidak boleh kosong');
    } else if (accNumberInputName.text.isEmpty) {
      isLoadingButton = false;
      notifyListeners();

      showFlushBar('Account number tidak boleh kosong');
    } else if (accNameInputName.text.isEmpty) {
      isLoadingButton = false;
      notifyListeners();

      showFlushBar('Account name tidak boleh kosong');
    } else if (listLabel.isEmpty) {
      isLoadingButton = false;
      notifyListeners();

      showFlushBar('Label tidak boleh kosong');
    } else {
      isLoadingButton = true;
      notifyListeners();

      final getUser = gets.Get.find<UserController>();
      LoginRes loginRes = await getUser.getUserLogin();

      var formData = FormData.fromMap(
        {
          "bank_name": selectBank?.id.toString(),
          "acc_num": accNumberInputName.text.toString(),
          "name_on_bank": accNameInputName.text.toString(),
          "label": selectLabel?.labelCode.toString(),
          "id": loginRes.id.toString(),
        },
      );

      saveTransaksi(formData);
    }
  }

  void saveTransaksi(FormData formData) async {
    isLoadingButton = true;
    notifyListeners();

    final resStep1 = await HTTPTransaction().uploadTransaction(
      data: formData,
    );

    resStep1.fold(
      (e) async {
        isLoadingButton = false;
        notifyListeners();
        showFlushBar(e);
      },
      (cat) async {
        isLoadingButton = false;
        notifyListeners();

        Navigator.pop(context);
        Navigator.pushNamed(
          context,
          BerhasilPage.ROUTE,
          arguments: ArgsBerhasilPage(
            message: 'Transaksi berhasil disimpan',
          ),
        );
      },
    );
  }

  void showFlushBar(String message) {
    Flushbar(
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: Theme.of(context).colorScheme.error,
      duration: Duration(seconds: 3),
      titleText: Row(
        children: [
          Icon(
            Icons.add_alert_rounded,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          SizedBox(width: 5),
          vText(
            "Oops...",
            fontSize: 20,
            color: Theme.of(context).colorScheme.onPrimary,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
      messageText: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: vText(
          message,
          fontSize: 16,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    )..show(context);
  }
}
