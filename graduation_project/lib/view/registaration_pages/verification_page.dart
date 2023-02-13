import 'package:flutter/material.dart';
import 'package:graduation_project/component/register_button.dart';
import 'package:graduation_project/component/text_field.dart';
import 'package:graduation_project/constants/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation_project/view/registaration_pages/numpad_page.dart';

import 'package:iconsax/iconsax.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
     double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white_color,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: white_color,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Iconsax.arrow_left_2,
          color: Second_color),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Verification',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: Second_color),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SvgPicture.asset(
              'assets/images/image_login/Forgot password-bro.svg',
              width: w,
            height:h*0.45 ,
            ),
            Center(
              child: Text(
                'Don\'t worry',
                style: TextStyle(fontSize: 14, color: Second_color),
              ),
            ),
            Center(
              child: Text(
                'Enter your email and we\'ll send you',
                style: TextStyle(fontSize: 14, color: Second_color),
              ),
            ),
            Center(
              child: Text(
                'a verification code to reset your password',
                style: TextStyle(fontSize: 14, color: Second_color),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            InputField(
              hint_text: 'Enter Your Email',
              prefix: Icon(
                Iconsax.sms,
                color: Main_color,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            RegisterButton(
              navigate: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
                return NumPad();
            }));
              },
              register_txt: 'Send'),
              Spacer(),
          ],
        ),
      ),
    );
  }
}