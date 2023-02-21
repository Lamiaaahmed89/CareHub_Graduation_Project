
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:graduation_project/Controllers/SignUpController.dart';
import 'package:graduation_project/reusable/SignUpBar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class EnterHeight extends StatelessWidget {
  const EnterHeight({super.key});

  @override
  Widget build(BuildContext context) {
    double widtth = MediaQuery.of(context).size.width;
    double heightt = MediaQuery.of(context).size.height;
    SignUpController controller = Get.put(SignUpController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: SignUpBar("Next", "Tophoto"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: widtth * .08),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: widtth * .1,
                  height: heightt * .1,
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    "assets/images/ruler.svg",
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor("#285FFA"),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: heightt * .03),
                    child: Text(
                      "What is your height?",
                      style: TextStyle(
                          fontSize: widtth * .040, fontWeight: FontWeight.w400),
                    )),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          right: widtth * .50, left: widtth * .10, bottom: 5),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "170",
                            hintStyle: TextStyle(fontSize: 12),
                            border: InputBorder.none,
                            fillColor: HexColor("#FFFFFF")),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Padding(
                        padding: EdgeInsets.only(
                            right: widtth * .65, left: widtth * .17),
                        child: Text(
                          "cm",
                          style: TextStyle(color: HexColor("#AEB2BB")),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: heightt * .03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GetBuilder<SignUpController>(
                        builder: (controller) => SvgPicture.asset(
                          controller.Gender == "male"
                              ? "assets/images/man.svg"
                              : "assets/images/woman.svg",
                          color: Color(0x80AEB2BB),
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/images/ruler-height.svg",
                      ),
                    ],
                  ),
                ),
                // Padding(
                //   padding:
                //       EdgeInsets.only(top: heightt * .02, bottom: heightt * .01),
                //   child: SvgPicture.asset(
                //     "assets/ruler-weight.svg",
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}