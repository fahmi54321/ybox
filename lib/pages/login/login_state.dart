import 'package:cloud_storage/models/login_res.dart';
import 'package:cloud_storage/network/http_general.dart';
import 'package:cloud_storage/network/http_login.dart';
import 'package:cloud_storage/pages/home/home_page.dart';
import 'package:cloud_storage/utils/shared_pref.dart';
import 'package:cloud_storage/utils/utils.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';

class LoginState extends ChangeNotifier {
  BuildContext context;

  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  var fullNameController = TextEditingController();
  var contactController = TextEditingController();
  var emailController = TextEditingController();
  bool passwordInvisible = false;
  bool isLoading = false;
  bool isRegister = false;

  LoginState(this.context);

  void isRegisters() {
    isRegister = !isRegister;
    notifyListeners();
  }

  void updateVisibleInvisiblePass() {
    passwordInvisible = !passwordInvisible;
    notifyListeners();
  }

  void login() async {
    if (usernameController.text.length < 1) {
      await VUtils.showDefaultAlertDialog(
        context,
        title: "Pesan",
        message: "Username tidak boleh kosong",
      );
      notifyListeners();
    } else if (passwordController.text.length < 1) {
      await VUtils.showDefaultAlertDialog(
        context,
        title: "Pesan",
        message: "Password Tidak Boleh kosong",
      );
      notifyListeners();
    } else {
      isLoading = true;
      notifyListeners();

      Map<String, dynamic> data = {
        'username': usernameController.text.toString(),
        'password': passwordController.text.toString(),
      };

      final resStep1 = await HTTPLoginService().login(data: data);
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
          getProfile(cat);
        },
      );
    }
  }

  void register() async {
    if (fullNameController.text.length < 1) {
      await VUtils.showDefaultAlertDialog(
        context,
        title: "Pesan",
        message: "Nama lengkap tidak boleh kosong",
      );
      notifyListeners();
    } else if (contactController.text.length < 1) {
      await VUtils.showDefaultAlertDialog(
        context,
        title: "Pesan",
        message: "Nomor kontak Tidak Boleh kosong",
      );
      notifyListeners();
    } else if (emailController.text.length < 1) {
      await VUtils.showDefaultAlertDialog(
        context,
        title: "Pesan",
        message: "Email Tidak Boleh kosong",
      );
      notifyListeners();
    } else {
      isLoading = true;
      notifyListeners();

      Map<String, dynamic> data = {
        'full_name': fullNameController.text.toString(),
        'contact': contactController.text.toString(),
        'email': emailController.text.toString(),
      };

      final resStep1 = await HTTPLoginService().register(data: data);
      isLoading = false;

      notifyListeners();
      resStep1.fold(
        (e) async {
          isLoading = false;
          notifyListeners();
          await VUtils.showDefaultAlertDialog(
            context,
            title: "Register Failed!",
            message: e,
          );
        },
        (cat) async {
          isRegister = false;
          notifyListeners();

          showFlushBar(
            icon: Icons.close,
            bgColor: Theme.of(context).colorScheme.primary,
            title: 'Message',
            message: ['Berhasil register','Mohon ditunggu untuk konfirmasi oleh admin'],
          );

        },
      );
    }
  }

  void getProfile(LoginRes loginRes) async {
    isLoading = true;
    notifyListeners();

    final resStep1 = await HTTPGeneral().getProfile(
      token: loginRes.access_token,
    );
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
        // save user
        await SharedPreferencesUtils.saveLoginPreference(loginRes);
        // save profile
        await SharedPreferencesUtils.saveProfilePreference(cat);
        Navigator.pushReplacementNamed(context, HomePage.ROUTE);
      },
    );
  }

  void showFlushBar({
    required IconData icon,
    required Color bgColor,
    required String title,
    required List<String> message,
  }) {
    Flushbar(
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: bgColor,
      duration: Duration(seconds: 3),
      titleText: Row(
        children: [
          Icon(
            // Icons.add_alert_rounded,
            icon,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          SizedBox(width: 5),
          vText(
            title,
            fontSize: 20,
            color: Theme.of(context).colorScheme.onPrimary,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
      messageText: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: message.length,
          itemBuilder: (context, index) {
            String msg = message[index];

            return Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: vText(
                msg,
                fontSize: 16,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            );
          }),
    )..show(context);
  }
}
