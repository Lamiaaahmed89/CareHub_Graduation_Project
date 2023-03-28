import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graduation_project/component/personal_container.dart';
import 'package:graduation_project/constants/colors.dart';
import 'package:graduation_project/reusable/Appbar.dart';
import 'package:graduation_project/reusable/Gender.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class PesronalInformation extends StatelessWidget {
  const PesronalInformation({super.key});

  static String id = 'PesronalInformation';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white_color,
      appBar: appBar('Personal Information'),
      body: Row(
        children: [
          Column(
        children: [
         PersonalContainer(
          icon: Iconsax.user,
          containerText: 'Full Name',
          text: 'Ali Ahmed',
         ),
         SizedBox(height: 16.0,),
         PersonalContainer(
          icon: Iconsax.sms,
          containerText: 'Email',
          text: 'Ali Mohamed@gmail.com',
         ),
         SizedBox(height: 16.0,),
         PersonalContainer(
          containerText: 'Phone',
          text: '01186475621',
          icon: Iconsax.call,
         ),
         SizedBox(height: 16.0,),
         PersonalContainer(
          text: 'March 18,200', 
          containerText: 'Birthday',
          icon: Iconsax.calendar_1,
        ),
        SizedBox(height: 16.0,),
        PersonalContainer(
          text: '55 kg', 
          containerText: 'Weight',
          icon: Iconsax.weight,)
        ],
      ),
      SizedBox(width: 19.0,),
      Column(
        children: [
          PersonalContainerWithImage(
            img: 'assets/images/personal_info/icons light/ruler.svg',
            text: '155cm', 
            containerText: 'height'),
          SizedBox(height: 16.0,),
          PersonalContainerWithImage(
            img: 'assets/images/personal_info/icons light/blood.svg',
            text: 'A+', 
            containerText: 'Blood'),
          SizedBox(height: 16.0,),
                 Container(
                  width: 162,
                  height: 440,
    decoration: BoxDecoration(
      color: white_color,
      borderRadius: BorderRadius.all(Radius.circular(7)),
      boxShadow: [
        BoxShadow(
          color: HexColor("#000000").withAlpha(35),
          // spreadRadius: 5,
          blurRadius: 6,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset('assets/images/personal_info/icons light/gender.svg',
            color: Main_color,),
            Text('Gender')
          ],
        ),
        SvgPicture.asset('assets/images/man.svg',
        color: Text2_color,),
        
      ],
    ),
  ),
        
        ],
      ),
        ],
      )
    );
  }
}