import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:cloud_storage/resource/CPColors.dart';
import 'package:cloud_storage/widget/alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart' as get_package;

class Utils {
  static String DISPLAY_DATE_FORMAT = "dd MMMM yyyy";
  static String DISPLAY_HOUR_FORMAT = "hh:mm:ss";
  static String DISPLAY_DATE_FORMAT2 = "dd MMM yyyy";
  static String SEND_DATE_FORMAT = "dd-MM-yyyy";
  static String SEND_DATE_FORMAT2 = "yyyy-MM-dd";

  static String dateToString(DateTime time, String format) {
    if (time == null) return "";
    var formatter = DateFormat(format);
    String formatted = formatter.format(time);
    return formatted;
  }

  static String formatNumberToRupiah(int value) {
    final formatCurrency = new NumberFormat("#,##0", "id_ID");
    String result = formatCurrency.format(value);
    var rupiah = "Rp. $result,-";
    return rupiah;
  }

  static Future<bool> checkAndRequestCameraPermissions() async {
    var status = await Permission.camera.status;
    if (!status.isGranted) {
      var stts = await Permission.camera.request();
      return stts.isGranted;
    } else {
      return true;
    }
  }

  static Future<String?> pickMedia({bool isCamera = true}) async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = isCamera
        ? await _picker.pickImage(source: ImageSource.camera)
        : await _picker.pickImage(source: ImageSource.gallery);
    return image?.path;
  }

  //random string
  static const _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  static Random _rnd = Random();

  static String getRandomString(int length) =>
      String.fromCharCodes(Iterable.generate(
          length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

  static String dummyDetailPekerjaan =
      "The UX designer creates satisfying or compelling experiences for users of a product, often drawing on results from user research and workflow analysis. Generally, UX designers need to possess strong creative, technical and problem-solving skills. The UX design role may involve psychology, storytelling and computer science as well. Areas of focus may include content, controls, visual design and development, information architecture, user research, branding and customer/technical support.\n\nWhat does a UX designer do? Responsibilities often include: \n- Consulting with clients to understand their goals and explaining research results\n - Conducting usability testing\n - Creating wireframes, storyboards, sitemaps and screen flows\n - Creating product prototypes\n - Developing personas and usage scenarios\n - Analyzing user feedback and activity, and iterating to enhance the user experience\n - Assisting with content development\n - Conducting competitor and customer analysis\n";

  static Future<dynamic> getRequest(String url) async {
    http.Response response = await http.get(Uri.parse(url));

    try {
      if (response.statusCode == 200) {
        String data = response.body;
        var decodeData = jsonDecode(data);
        return decodeData;
      } else {
        return 'failed';
      }
    } catch (e) {
      return 'failed';
    }
  }
}

class VUtils {
  static showDefaultDialog(BuildContext context,
      {required String title, required String message, onPressed}) {
    get_package.Get.defaultDialog(
        title: title,
        middleText: message,
        barrierDismissible: false,
        actions: [
          RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "OK",
              style: TextStyle(color: Colors.white),
            ),
            color: CPPrimaryColor,
          )
        ]);
  }

  static showDefaultAlertDialog(BuildContext context,
      {required String title, required String message, onPressed}) {
    showDialog(
        context: context,
        builder: (BuildContext context) => DefaultAlertDialog(
              context,
              title,
              message,
              onPressed: onPressed,
            ));
  }

  static showAlertDialog(BuildContext context,
      {required String title, required String message, onPressed}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(title),
          content: new Text(message),
          actions: <Widget>[
            new FlatButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  static Future<String> convertToBase64({required String path}) async {
    String fileInBase64 = '';
    File? _pickedImage;
    final pickedImageFile = File(path);
    _pickedImage = pickedImageFile;
    List<int> fileByte = _pickedImage.readAsBytesSync();
    fileInBase64 = "data:image/jpeg;base64," + base64Encode(fileByte);
    return fileInBase64;
  }

  static Future<File?> getBase64Photo({required int flag}) async {
    final picker = ImagePicker();
    File? _pickedImage;

    String fileInBase64 = '';

    switch (flag) {
      case 1:
        {
          final pickedImage = await picker.pickImage(
              source: ImageSource.camera, maxWidth: 400, imageQuality: 100);
          final pickedImageFile = File(pickedImage!.path);
          _pickedImage = pickedImageFile;
          // List<int> fileByte = _pickedImage.readAsBytesSync();
          // fileInBase64 = "data:image/jpeg;base64," + base64Encode(fileByte);
        }
        break;
      case 2:
        {
          final pickedImage = await picker.pickImage(
              source: ImageSource.gallery, maxWidth: 400, imageQuality: 100);

          final pickedImageFile = File(pickedImage!.path);
          _pickedImage = pickedImageFile;
          // List<int> fileByte = _pickedImage.readAsBytesSync();
          // fileInBase64 = "data:image/jpeg;base64," + base64Encode(fileByte);
        }
        break;
      default:
        print('tidak bisa ambil foto');
      // fileInBase64 = '';
    }

    return _pickedImage;
  }
}
