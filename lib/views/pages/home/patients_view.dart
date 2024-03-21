import 'package:clinic_app/views/pages/home/patient_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PatientsView extends StatelessWidget {
  const PatientsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: GridView.builder(
        padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 200.sp, bottom: 20.sp),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15.sp,
          crossAxisSpacing: 15.sp,
          childAspectRatio: 6/7
        ),
        itemCount: 120,
        itemBuilder: (context, index) => PatientCard(index: index),
      ),
    );
  }
}