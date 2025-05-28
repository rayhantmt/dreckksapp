import 'package:dreckks/core/theme/app_texts.dart';
import 'package:dreckks/core/theme/background.dart';
import 'package:dreckks/core/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoggedin = false;
  bool Signup = true;

 Widget _buildLoginForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Login Form Goes Here",
          style: AppTextStyle.roboto(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        // Add your actual login form fields here
      ],
    );
  }

  Widget _buildSignupForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Signup Form Goes Here",
          style: AppTextStyle.roboto(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        // Add your actual sign up form fields here
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'Get Started with',
            style: GoogleFonts.roboto(
              textStyle: AppTextStyle.roboto(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              AppTexts.loginpagetext,
              style: AppTextStyle.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),

            Container(
              height: 40,
              width: 214,
              decoration: BoxDecoration(
                color: Color(0x14EEF81A).withOpacity(.1),
                borderRadius: BorderRadius.circular(90),
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isLoggedin = true;
                        Signup = false;
                      });
                    },
                    child: Container(
                      height: 36,
                      width: 105,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27),
                        color: isLoggedin
                            ? Color(0x14EEF833)
                            : Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          'Log in',
                          style: AppTextStyle.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      setState(() {
                        Signup = true;
                        isLoggedin = false;
                      });
                    },
                    child: Container(
                      height: 36,
                      width: 105,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27),
                        color: Signup ? Color(0x14EEF833) : Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          'Sign up',
                          style: AppTextStyle.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 60,),

Expanded(
                child: Signup ? _buildSignupForm() : _buildLoginForm(),
              ),
            
          ],
        ),
      ),
    );
  }
}
