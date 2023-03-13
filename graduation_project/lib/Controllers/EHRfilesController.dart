
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/view/EHR_Pages/EachDoctorResult.dart';
import 'package:graduation_project/view/EHR_Pages/EachDoctorTests.dart';

class EHRfilesController extends GetxController {
  bool Medical_Tests = true;
  void IsMedical_Tests(String option) {
    if (option == "tests") {
      Medical_Tests = true;
      Get.back();
      Get.to(EachDoctorTests());
    }
    if (option == "results") {
      Medical_Tests = false;
      Get.back();
      Get.to(EachDoctorResults());
    }
    update();
  }
}