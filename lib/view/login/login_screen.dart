import 'package:flutter/material.dart';
import 'package:news_wave/config/colors/colors_class.dart';
import 'package:news_wave/config/components/components.dart';
import 'package:news_wave/config/themes/theme.dart';

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
            SizedBox(height: 20,),
            ButtonWidget(
                textColor: ColorClass.white,
                bgColor: ColorClass.btnColor,
                onPress: (){},
                title: 'Login'),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Divider(
                  thickness: 1,
                  indent: 20,
                  color: ColorClass.blue,
                ),
                TextWidget(text: "Or Login With",style: lightTheme.textTheme.bodyMedium!,),
                Divider(
                  thickness: 0.1,
                  endIndent: 20,
                  color: ColorClass.black,
                ),
              ],
            ),
            SizedBox(height: 20,),
               Container(
                 padding: EdgeInsets.all(5),
                 height: 45,
                 width: 45,
                 child:  IconWidget(icon: Icons.email_outlined, size: 40, color: ColorClass.btnColor),
               ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(text: "Don't have an account?",style: lightTheme.textTheme.bodyLarge!,),
                GestureDetector(
                  onTap: (){},
                  child: TextWidget(text: "Register",style: lightTheme.textTheme.bodyMedium!,),
                )
              ],
            ),
          ],
        ),
      )
    );
  }
}
