import 'package:cloud_storage/models/general/bank_res.dart';
import 'package:cloud_storage/models/general/label_res.dart';
import 'package:cloud_storage/models/general/publishing_res.dart';
import 'package:cloud_storage/models/general/roles_res.dart';
import 'package:cloud_storage/pages/form/add_transaction_state.dart';
import 'package:cloud_storage/pages/form/main_form_state.dart';
import 'package:cloud_storage/resource/CPColors.dart';
import 'package:cloud_storage/widget/v_dropdown.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:cloud_storage/widget/v_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTransactionPage extends StatefulWidget {
  const AddTransactionPage({Key? key}) : super(key: key);
  static const String ROUTE = '/AddTransactionPage';

  @override
  AddTransactionPageState createState() => AddTransactionPageState();
}

class AddTransactionPageState extends State<AddTransactionPage> {
  late AddTransactionState state;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AddTransactionState(context),
      child: Consumer(
        builder: (
          BuildContext context,
          AddTransactionState state,
          _,
        ) {
          this.state = state;
          return Scaffold(
            appBar: AppBar(
              title: vText(
                'Transaction',
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
              centerTitle: true,
              elevation: 0,
            ),
            body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 8),
                    buildBankName(),
                    buildAccountNumber(),
                    buildNameOnAccount(),
                    buildLabelName(),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(15.0),
              child: VButtonRectangle(
                (state.isLoadingButton == true) ? 'Loading...' : 'Simpan',
                radius: 55,
                width: MediaQuery.of(context).size.width,
                height: 46,
                backgroundColor: Theme.of(context).colorScheme.primary,
                borderColor: Theme.of(context).colorScheme.primary,
                colorText: Theme.of(context).colorScheme.onPrimary,
                onTap: (state.isLoadingButton == true) ? null : (){
                  state.cekValidasiTransaksiForm();
                },
                trailing: (state.isLoadingButton == true)
                    ? SizedBox(
                        height: 15,
                        width: 15,
                        child: CircularProgressIndicator(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      )
                    : null,
              ),
            ),
          );
        },
      ),
    );
  }

  Column buildLabelName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        vText(
          "Label Name",
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 8),
        (state.isLoading == true)
            ? CircularProgressIndicator(
                color: CPPrimaryColor,
              )
            : VDropDownLabel(
                value: state.selectLabel,
                onChanged: (LabelRes? data) {
                  setState(() {
                    state.selectLabel = data;
                  });
                },
                items: state.listLabel
                    .map<DropdownMenuItem<LabelRes>>((LabelRes value) {
                  return DropdownMenuItem<LabelRes>(
                    value: value,
                    child: Text(value.nama),
                  );
                }).toList(),
                borderColor: CPPrimaryColor.withOpacity(0.1),
                icon: Icon(Icons.arrow_drop_down),
              ),
      ],
    );
  }

  Column buildNameOnAccount() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8),
        vText(
          "Name on Account",
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 16),
        VInputText(
          'Input here...',
          radius: 8,
          outlineColor: CPPrimaryColor.withOpacity(0.1),
          activeColor: CPPrimaryColor,
          fontSize: 12,
          controller: state.accNameInputName,
          fillColor: CPPrimaryColor.withOpacity(0.04),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Column buildBankName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        vText(
          "Bank Name",
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 8),
        (state.isLoading == true)
            ? CircularProgressIndicator(
                color: CPPrimaryColor,
              )
            : VDropDownBank(
                value: state.selectBank,
                onChanged: (BankRes? data) {
                  setState(() {
                    state.selectBank = data;
                  });
                },
                items: state.listBank
                    .map<DropdownMenuItem<BankRes>>((BankRes value) {
                  return DropdownMenuItem<BankRes>(
                    value: value,
                    child: Text(value.name),
                  );
                }).toList(),
                borderColor: CPPrimaryColor.withOpacity(0.1),
                icon: Icon(Icons.arrow_drop_down),
              ),
      ],
    );
  }

  Column buildAccountNumber() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8),
        vText(
          "Account Name",
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 16),
        VInputText(
          'Input here...',
          radius: 8,
          outlineColor: CPPrimaryColor.withOpacity(0.1),
          activeColor: CPPrimaryColor,
          fontSize: 12,
          keyboardType: TextInputType.number,
          controller: state.accNumberInputName,
          fillColor: CPPrimaryColor.withOpacity(0.04),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
