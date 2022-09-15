import 'package:cloud_storage/widget/v_text.dart';
import 'package:cloud_storage/widget/v_widgets.dart';
import 'package:flutter/material.dart';

class ArgsBerhasilPage {
  String? message;

  ArgsBerhasilPage({this.message});
}

class BerhasilPage extends StatelessWidget {
  static const ROUTE = 'berhasil_page';
  ArgsBerhasilPage? args;

  BerhasilPage({
    Key? key,
    this.args,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: SizedBox(
                width: 139,
                height: 190,
                child: Image.asset('images/success.png'),
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: vText(
                  'Berhasil',
                  fontSize: 24
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: vText(
                  args?.message ?? 'Masukkan pesan',
                  fontSize: 14
                ),
              ),
            ),
            const SizedBox(height: 60),
            VButtonRectangle(
              'Selesai',
              width: MediaQuery.of(context).size.width / 3,
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

}
