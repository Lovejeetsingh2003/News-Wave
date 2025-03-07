import 'package:flutter/material.dart';
import 'package:news_wave/config/colors/colors_class.dart';
import 'package:news_wave/config/components/button_widget.dart';
import 'package:news_wave/config/components/image_from_asset_widget.dart';
import 'package:news_wave/config/components/text_form_field_widget.dart';
import 'package:news_wave/config/components/text_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode pswFocusNode = FocusNode();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pswController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageFromAssetWidget(img: 'assets/images/logo.png', height: 120, width: 120),
            SizedBox(height: 20,),
            TextFormFieldWidget(
                obscureText: false,
                inputType: TextInputType.emailAddress,
                hintText: 'Enter Your Email Address',
                focusNode: emailFocusNode,
                controller: emailController
            ),
            SizedBox(height: 20,),
            TextFormFieldWidget(
                obscureText: true,
                inputType: TextInputType.visiblePassword,
                hintText: 'Enter Your Password',
                focusNode: pswFocusNode,
                controller: pswController
            ),
            SizedBox(height: 40,),
            ButtonWidget(
                textColor: ColorClass.white,
                bgColor: ColorClass.btnColor,
                onPress: (){},
                title: 'Login')
          ],
        ),
      )
    );
  }
}
