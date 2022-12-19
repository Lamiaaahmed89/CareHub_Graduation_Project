import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../models/CardAppoDetails.dart';
import '../reusable/AppBar.dart';
import '../reusable/AppointmentListView.dart';
import '../reusable/HomeBar.dart';

class Completed extends StatelessWidget {
  Completed({super.key});
  List TryNuum = [1, 2, 1];
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Appbar(),
      body: Column(
        children: [
          HomeBar(width, height),
          AppListView(TryNuum),
        ],
      ),
    );
  }
}
