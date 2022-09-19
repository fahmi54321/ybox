import 'package:cloud_storage/models/login_res.dart';
import 'package:cloud_storage/network/http_general.dart';
import 'package:cloud_storage/network/http_login.dart';
import 'package:cloud_storage/pages/home/home_page.dart';
import 'package:cloud_storage/utils/shared_pref.dart';
import 'package:cloud_storage/utils/utils.dart';
import 'package:flutter/material.dart';

class LoginState extends ChangeNotifier {
  BuildContext context;

  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  bool passwordInvisible = false;
  bool isLoading = false;

  LoginState(this.context);

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
}
