import 'package:cloud_storage/controllers/user_controller.dart';
import 'package:cloud_storage/models/general/profile_res.dart';
import 'package:cloud_storage/models/login_res.dart';
import 'package:cloud_storage/network/http_login.dart';
import 'package:cloud_storage/pages/home/berhasil_page.dart';
import 'package:cloud_storage/resource/CPColors.dart';
import 'package:cloud_storage/utils/utils.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:get/get.dart' as gets;

class UbahPasswordState extends ChangeNotifier {
  BuildContext context;
  var passwordController = TextEditingController();
  bool passwordInvisible = false;
  bool isLoading = false;

  void updateVisibleInvisiblePassNow() {
    passwordInvisible = !passwordInvisible;
    notifyListeners();
  }

  UbahPasswordState(this.context);

  void ubahPassword() async {
    isLoading = true;
    notifyListeners();

    final getProfile = gets.Get.find<UserController>();
    ProfileRes profileRes = await getProfile.getProfileLogin();

    final getUser = gets.Get.find<UserController>();
    LoginRes loginRes = await getUser.getUserLogin();

    notifyListeners();

    if (passwordController.text.length < 1) {
      showFlushBar(
        icon: Icons.close,
        bgColor: Theme.of(context).colorScheme.error,
        title: 'Message',
        message: ['Password tidak boleh kosong'],
      );
      notifyListeners();
    } else {
      isLoading = true;
      notifyListeners();

      Map<String, dynamic> data = {
        '_method': 'PUT',
        'password': passwordController.text.toString(),
        'username': profileRes.username,
        'id': loginRes.id.toString(),
      };

      final resStep1 = await HTTPLoginService().ubahPassword(data: data);
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
          Navigator.pop(context);
          Navigator.pushNamed(
            context,
            BerhasilPage.ROUTE,
            arguments: ArgsBerhasilPage(
              message: 'Berhasil ubah password',
            ),
          );
        },
      );
    }
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
