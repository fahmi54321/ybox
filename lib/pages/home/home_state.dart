import 'package:cloud_storage/utils/ShImages.dart';
import 'package:flutter/material.dart';

class HomeState extends ChangeNotifier {
  BuildContext context;

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  HomeState(this.context);

}
