import 'package:cloud_storage/pages/profil/profil_state.dart';
import 'package:cloud_storage/pages/profil/ubah_password_page.dart';
import 'package:cloud_storage/resource/CPColors.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class ProfilPage extends StatefulWidget {
  static const ROUTE = 'profil_page';
  const ProfilPage({Key? key}) : super(key: key);

  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  late ProfilState state;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProfilState(context),
      child: Consumer(
        builder: (BuildContext context, ProfilState state,
            Widget? child) {
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
        title: Center(
            child: vText("Profil", color: CPScaffoldDarkColor)),
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body:  Padding(padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Center(
                child: Column(
                  children: [
                    vText("Aan Pranowo", fontWeight: FontWeight.w700, fontSize: 24, color: CPBlack1),
                    vText("Tim Survey", fontWeight: FontWeight.w400, fontSize: 16, color: CPGreen),
                  ],
                ),
              ),
              SizedBox(height: 50),
              InkWell(
                onTap: () => Navigator.pushNamed(context, UbahPasswordPage.ROUTE),
                child: Row(
                  children: [
                    SvgPicture.asset("images/ic_lock.svg"),
                    SizedBox(width: 10),
                    Expanded(child: vText("Ubah Password", fontSize: 14, fontWeight: FontWeight.w400, color: CPBlack1)),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  SvgPicture.asset("images/ic_exit.svg"),
                  SizedBox(width: 10),
                  Expanded(child: vText("Keluar Aplikasi", fontSize: 14, fontWeight: FontWeight.w400, color: CPRedColor)),
                ],
              ),
              Expanded(child: Container()),
              Center(child: vText("Versi 1.0.0", fontSize: 14, fontWeight: FontWeight.w400, color: CPGreen))
            ],
          )),
    );
  }
}
