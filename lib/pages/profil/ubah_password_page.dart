import 'package:cloud_storage/pages/profil/ubah_password_state.dart';
import 'package:cloud_storage/resource/CPColors.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:cloud_storage/widget/v_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class UbahPasswordPage extends StatefulWidget {
  static const ROUTE = 'ubah_password_page';

  const UbahPasswordPage({Key? key}) : super(key: key);

  @override
  _UbahPasswordPageState createState() => _UbahPasswordPageState();
}

class _UbahPasswordPageState extends State<UbahPasswordPage> {
  late UbahPasswordState state;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UbahPasswordState(context),
      child: Consumer(
        builder:
            (BuildContext context, UbahPasswordState state, Widget? child) {
          this.state = state;
          return body(context);
        },
      ),
    );
  }

  body(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:
            Center(child: vText("Ubah Password", color: CPScaffoldDarkColor)),
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                VCustomBoxWidget(
                    widget: Row(
                      children: [
                        SvgPicture.asset("images/ic_warning.svg"),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              vText("Ubah Password",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: CPBlack1),
                              SizedBox(height: 10),
                              vText(
                                  "Pastikan untuk selalu mengingat sandi terbaru anda. Dan pastikan untuk selalu mengganti passord secara berkala.",
                                  fontSize: 12,
                                  maxLines: 10,
                                  fontWeight: FontWeight.w400,
                                  color: CPBlack1),
                            ],
                          ),
                        )
                      ],
                    ),
                    radius: 15,
                    color: CPLimeColor.withOpacity(0.24),
                    fontColor: CPLimeColor.withOpacity(0.24),
                    borderColor: CPLimeColor.withOpacity(0.24),
                    paddingHorizontal: 10,
                    paddingVertical: 10),
                SizedBox(height: 20),
                vText("Password Sekarang", fontSize: 14, fontWeight: FontWeight.w400, color: CPBlack1),
                SizedBox(height: 5),
                VInputText("Masukkan password sekarang", suffixIcon: Icon(Icons.remove_red_eye)),
                SizedBox(height: 10),
                vText("Password Baru", fontSize: 14, fontWeight: FontWeight.w400, color: CPBlack1),
                SizedBox(height: 5),
                VInputText("Masukkan password baru", suffixIcon: Icon(Icons.remove_red_eye))
              ],
            )),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: VButton(text: "Simpan",
            radius: 12,
            paddingHorizontal: 8,
            paddingVertical: 8,
            width: MediaQuery.of(context).size.width, height: 45),
      ),
    );
  }
}
