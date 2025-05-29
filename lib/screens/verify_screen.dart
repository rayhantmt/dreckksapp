import 'package:dreckks/core/theme/background.dart';
import 'package:dreckks/core/theme/text_theme.dart';
import 'package:dreckks/screens/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            'Verify your email',

            style: AppTextStyle.roboto(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),

/*leading: Container(
            child: Icon(Icons.arrow_back_outlined),
            height: 42,
            width: 42,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(110),
              color: Color(0x1AFFFFFF),
            ),
          ),*/




          
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 72,
                  width: 72,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(48),
                    color: Color(0x1A28A15C),
                  ),
                  child: Image.asset('assets/images/email.png'),
                ),
                SizedBox(height: 20),
                Text(
                  'Check Email',
                  style: AppTextStyle.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Please check your email to verify your account.',
                  style: AppTextStyle.roboto(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Get.to(() => OtpScreen());
                  },
                  child: Container(
                    height: 42,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xFF00C1C9),
                    ),
            
                    child: Center(
                      child: Text(
                        'Confirm Now',
                        style: AppTextStyle.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 200,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
