import 'dart:convert';

import 'package:cloud_storage/controllers/amount_controller.dart';
import 'package:cloud_storage/controllers/user_controller.dart';
import 'package:cloud_storage/models/login_res.dart';
import 'package:cloud_storage/pages/home/home_page.dart';
import 'package:cloud_storage/pages/login/login_page.dart';
import 'package:cloud_storage/pages/splash_page.dart';
import 'package:cloud_storage/resource/color_schemes.g.dart';
import 'package:cloud_storage/screens/ShSplashScreen.dart';
import 'package:cloud_storage/store/AppStore.dart';
import 'package:cloud_storage/utils/AppTheme.dart';
import 'package:cloud_storage/utils/ShConstant.dart';
import 'package:cloud_storage/utils/ShDataGenerater.dart';
import 'package:cloud_storage/utils/shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:cloud_storage/router/router.dart' as router;

AppStore appStore = AppStore();
final GlobalKey<ScaffoldMessengerState> snackbarKey =
GlobalKey<ScaffoldMessengerState>();
final RouteObserver<ModalRoute<void>> routeObserver =
RouteObserver<ModalRoute<void>>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialize(aLocaleLanguageList: languageList());

  appStore.toggleDarkMode(value: getBoolAsync(isDarkModeOnPref));

  defaultToastGravityGlobal = ToastGravity.BOTTOM;

  final user = Get.put(UserController());
  final amount = Get.put(AmountController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: snackbarKey,
      title: 'CloudStorage${!isMobile ? ' ${platformName()}' : ''}',
      home: CekPage(),
      navigatorObservers: [routeObserver],
      onGenerateRoute: router.generateRoute,
      // theme: !appStore.isDarkModeOn
      //     ? AppThemeData.lightTheme
      //     : AppThemeData.darkTheme,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        // colorSchemeSeed: m3BaseColor
      ).copyWith(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
      navigatorKey: navigatorKey,
      scrollBehavior: SBehavior(),
    );
  }
}

class CekPage extends StatefulWidget {
  static const ROUTE = 'cek-page';

  const CekPage({Key? key}) : super(key: key);

  @override
  State<CekPage> createState() => _CekPageState();
}

class _CekPageState extends State<CekPage> {
  @override
  void initState() {
    super.initState();
    cekLogin();
  }

  cekLogin() async {
    log('cek login');
    var data = await SharedPreferencesUtils.getLoginPreference();
    log('dataa : $data');
    if (data == '' || data == null) {
      log('data null');
      Navigator.pushReplacementNamed(
        context,
        LoginPage.ROUTE,
      );
    } else {
      log('data tidak null');
      Navigator.pushReplacementNamed(
        context,
        HomePage.ROUTE,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
