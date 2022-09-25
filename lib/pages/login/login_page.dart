import 'package:cloud_storage/pages/login/login_state.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_storage/utils/ShColors.dart';
import 'package:cloud_storage/utils/ShConstant.dart';
import 'package:cloud_storage/utils/ShImages.dart';
import 'package:cloud_storage/utils/ShStrings.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  static const ROUTE = 'login_page';

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ChangeNotifierProvider(
      create: (_) => LoginState(context),
      child: Consumer(
        builder: (BuildContext context, LoginState state, _) {
          return Scaffold(
            body: Container(
              height: height,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  buildLogoApp(height, width, state),
                  buildForm(width, context, state,height),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  SingleChildScrollView buildForm(
      double width, BuildContext context, LoginState state, double height) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/logo.png',
              width: width * 0.75,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: spacing_xlarge,
            ),
            (state.isRegister == false)
                ? buildFormLogin(state, context)
                : buildFormRegister(state, context),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: MaterialButton(
                padding: EdgeInsets.all(8.0),
                child: vText(
                  (state.isLoading == true)
                      ? 'Loading...'
                      : (state.isRegister == false)
                          ? 'Login'
                          : 'Register',
                  fontSize: textSizeNormal,
                  color: (state.isLoading == true) ? sh_colorPrimary : sh_white,
                  fontWeight: FontWeight.w700,
                ),
                disabledColor: sh_colorPrimary.withOpacity(0.1),
                disabledTextColor: sh_colorPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(40.0),
                ),
                color: sh_colorPrimary,
                onPressed: (state.isLoading == true)
                    ? null
                    : () {
                        (state.isRegister == false)
                            ? state.login()
                            : state.register();
                      },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: InkWell(
                onTap: () {
                  state.isRegisters();
                },
                child: vText(
                  (state.isRegister == false)
                      ? "Belum punya akun ? Register disini"
                      : "Sudah punya akun? Login disini",
                  color: sh_colorPrimary,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column buildFormLogin(LoginState state, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          keyboardType: TextInputType.text,
          autofocus: false,
          controller: state.usernameController,
          textCapitalization: TextCapitalization.words,
          style: GoogleFonts.poppins(
            fontSize: 14,
          ),
          decoration: InputDecoration(
              filled: true,
              fillColor: Theme.of(context).colorScheme.onPrimary,
              focusColor: sh_editText_background_active,
              hintText: 'Username',
              hintStyle: GoogleFonts.poppins(
                fontSize: 14,
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0),
                  borderSide: BorderSide(color: sh_colorPrimary, width: 0.5)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0),
                  borderSide: BorderSide(
                      color: Colors.transparent,
                      style: BorderStyle.none,
                      width: 0))),
        ),
        SizedBox(height: 16),
        TextFormField(
          keyboardType: TextInputType.text,
          autofocus: false,
          obscureText: true,
          style: GoogleFonts.poppins(
            fontSize: 14,
          ),
          controller: state.passwordController,
          textCapitalization: TextCapitalization.words,
          decoration: InputDecoration(
              filled: true,
              fillColor: Theme.of(context).colorScheme.onPrimary,
              focusColor: sh_editText_background_active,
              hintStyle: GoogleFonts.poppins(
                fontSize: 14,
              ),
              hintText: sh_hint_password,
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0),
                  borderSide: BorderSide(color: sh_colorPrimary, width: 0.5)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0),
                  borderSide: BorderSide(
                      color: Colors.transparent,
                      style: BorderStyle.none,
                      width: 0))),
        ),
        SizedBox(height: 32),
      ],
    );
  }

  Column buildFormRegister(LoginState state, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          keyboardType: TextInputType.text,
          autofocus: false,
          controller: state.fullNameController,
          textCapitalization: TextCapitalization.words,
          style: GoogleFonts.poppins(
            fontSize: 14,
          ),
          decoration: InputDecoration(
              filled: true,
              fillColor: Theme.of(context).colorScheme.onPrimary,
              focusColor: sh_editText_background_active,
              hintText: 'Nama lengkap',
              hintStyle: GoogleFonts.poppins(
                fontSize: 14,
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0),
                  borderSide: BorderSide(color: sh_colorPrimary, width: 0.5)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0),
                  borderSide: BorderSide(
                      color: Colors.transparent,
                      style: BorderStyle.none,
                      width: 0))),
        ),
        SizedBox(height: 16),
        TextFormField(
          keyboardType: TextInputType.phone,
          autofocus: false,
          controller: state.contactController,
          textCapitalization: TextCapitalization.words,
          style: GoogleFonts.poppins(
            fontSize: 14,
          ),
          decoration: InputDecoration(
              filled: true,
              fillColor: Theme.of(context).colorScheme.onPrimary,
              focusColor: sh_editText_background_active,
              hintText: 'Nomor handphone',
              hintStyle: GoogleFonts.poppins(
                fontSize: 14,
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0),
                  borderSide: BorderSide(color: sh_colorPrimary, width: 0.5)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0),
                  borderSide: BorderSide(
                      color: Colors.transparent,
                      style: BorderStyle.none,
                      width: 0))),
        ),
        SizedBox(height: 16),
        TextFormField(
          keyboardType: TextInputType.text,
          autofocus: false,
          controller: state.emailController,
          textCapitalization: TextCapitalization.words,
          style: GoogleFonts.poppins(
            fontSize: 14,
          ),
          decoration: InputDecoration(
              filled: true,
              fillColor: Theme.of(context).colorScheme.onPrimary,
              focusColor: sh_editText_background_active,
              hintText: 'Email address',
              hintStyle: GoogleFonts.poppins(
                fontSize: 14,
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0),
                  borderSide: BorderSide(color: sh_colorPrimary, width: 0.5)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0),
                  borderSide: BorderSide(
                      color: Colors.transparent,
                      style: BorderStyle.none,
                      width: 0))),
        ),
        SizedBox(height: 32),
      ],
    );
  }

  Positioned buildLogoApp(double height, double width, LoginState state) {
    return Positioned(
      top: height - (width + width * 0.05),
      child: Image.network(
        ic_app_background,
        height: width + width * 0.05,
        width: width,
        fit: BoxFit.fill,
      ),
    );
  }
}
