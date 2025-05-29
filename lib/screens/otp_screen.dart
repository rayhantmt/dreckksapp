import 'package:dreckks/controller/otp_controller.dart';
import 'package:dreckks/core/theme/background.dart';
import 'package:dreckks/core/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final OTPController otpController = Get.put(OTPController());
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

        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Text(
                  'Enter OTP',
                  style: AppTextStyle.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'We have just sentb you 6 digitcode via uour email.',
                  style: AppTextStyle.roboto(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(4, (index) {
                    return SizedBox(
                      width: 60,
                      child: TextField(
                        controller: otpController.controllers[index],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          counterText: '',
                          filled: true,
                          fillColor: Colors.grey.shade800,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        onChanged: (value) {
                          otpController.updateDigit(index, value);
                          if (value.isNotEmpty && index < 3) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                      ),
                    );
                  }),
                ),

                SizedBox(height: 15,),

                    InkWell(
                  onTap: () {
                    Get.snackbar('OTP Entered', otpController.otp);
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
                        'Verify',
                        style: AppTextStyle.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('Didn’t receive code?',style: AppTextStyle.roboto(fontSize: 16, fontWeight: FontWeight.w400),),
                  Text('Resend Code',
                  style: AppTextStyle.roboto(fontSize: 16, fontWeight: FontWeight.w600,color: Color(0xFFFF5151)
                ),)
                ],),

                SizedBox(height: 200,)
              ],


              
            ),
          ),
        ),
      ),
    );
  }
}
