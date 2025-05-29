import 'package:dreckks/core/theme/app_texts.dart';
import 'package:dreckks/core/theme/background.dart';
import 'package:dreckks/core/theme/text_theme.dart';
import 'package:dreckks/screens/verify_screen.dart';
import 'package:dreckks/widgets/spalsh_screen.dart';
import 'package:dreckks/widgets/text_field.dart';
import 'package:dreckks/widgets/tick_box.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscurePassword = true;

  bool isLoggedin = false;
  bool Signup = true;
  bool user = true;
  bool serviceprovider = false;
  bool isChecked=false;
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController numbercontroller = TextEditingController();
  final TextEditingController agecontroller = TextEditingController();
  final TextEditingController weightcontroller = TextEditingController();
  final TextEditingController sexcontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  Widget _buildLoginForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Login Form Goes Here",
          style: AppTextStyle.roboto(fontSize: 16, fontWeight: FontWeight.w500),
        ),
         CustomTextFormField(
            label: 'Email',
            hint: 'Enter your email',
            controller: emailcontroller,
          ),
          CustomTextFormField(
            label: 'Password',
            hint: 'Enter your passwoed',
            controller: passwordcontroller,
            obscureText: _obscurePassword ? true : false,
            suffixIcon: IconButton(
              icon: Icon(
                _obscurePassword
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                color: Colors.white70,
              ),
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                
                });
              },
            ),
          ),

          Row(children: [
             Checkbox(
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
          activeColor: Colors.white,
          checkColor: Colors.black,
          side: const BorderSide(color: Colors.white),
          shape: const CircleBorder(),
        ),
          ],)
      ],
    );
  }

  Widget _buildSignupForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Choose Your Role",
          style: AppTextStyle.roboto(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Container(
          height: 34,
          width: 274,
          color: Colors.transparent,
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    user = true;
                    serviceprovider = false;
                  });
                },
                child: Container(
                  height: 34,
                  width: 131,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: user ? Color(0xFF175456) : Colors.transparent,
                  ),
                  child: Center(
                    child: Text(
                      'User',
                      style: AppTextStyle.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12),

              InkWell(
                onTap: () {
                  setState(() {
                    serviceprovider = true;
                    user = false;
                  });
                },
                child: Container(
                  height: 34,
                  width: 131,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: serviceprovider
                        ? Color(0xFF175456)
                        : Colors.transparent,
                  ),
                  child: Center(
                    child: Text(
                      'Service Provider',
                      style: AppTextStyle.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        Expanded(child: user ? _builduserfield() : _buildservicefield()),
      ],
    );
  }

  Widget _builduserfield() {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomTextFormField(
            label: 'Full Name',
            hint: 'Enter your full name',
            controller: namecontroller,
          ),
          CustomTextFormField(
            label: 'Mobile Number',
            hint: 'Your mobile number',
            controller: numbercontroller,
            keyboardType: TextInputType.number,
          ),
          CustomTextFormField(
            label: 'Your Age',
            hint: 'Enter your age',
            controller: agecontroller,
            keyboardType: TextInputType.number,
          ),
          CustomTextFormField(
            label: 'Your Weight',
            hint: 'Enter your weight',
            controller: weightcontroller,
            keyboardType: TextInputType.number,
          ),
          CustomTextFormField(
            label: 'Your Sex',
            hint: 'Enter your sex',
            controller: sexcontroller,
          ),
          CustomTextFormField(
            label: 'Email',
            hint: 'Enter your email',
            controller: emailcontroller,
          ),
          CustomTextFormField(
            label: 'Password',
            hint: 'Enter your passwoed',
            controller: passwordcontroller,
            obscureText: _obscurePassword ? true : false,
            suffixIcon: IconButton(
              icon: Icon(
                _obscurePassword
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                color: Colors.white70,
              ),
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
            ),
          ),
          TickBox(),
          SizedBox(height: 10),
          InkWell(
            onTap: () {Get.to(()=>VerifyScreen());},
            child: Container(
              height: 42,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Color(0xFF00C1C9),
              ),
              child: Center(child: Text('Verify Email',style: AppTextStyle.roboto(fontSize: 14, fontWeight: FontWeight.w500),)),
            ),
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }

  Widget _buildservicefield() {
    return Column(children: [
       
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
            Signup ? 'Get Started with' : AppTexts.signuppagetext,
            style: GoogleFonts.roboto(
              textStyle: AppTextStyle.roboto(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                Signup ? AppTexts.loginpagetext : AppTexts.signuppage2,
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
                          color: Signup
                              ? Color(0x14EEF833)
                              : Colors.transparent,
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
      
              Expanded(child: Signup ? _buildSignupForm() : _buildLoginForm()),
            ],
          ),
        ),
      ),
    );
  }
}
