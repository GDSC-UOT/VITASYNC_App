import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:clinic_app/views/pages/home/clinic_app_bar.dart';
import 'package:clinic_app/views/pages/home/forms/add_patient_form.dart';
import 'package:clinic_app/views/pages/home/patients_view.dart';
import 'package:clinic_app/views/pages/home/search_section.dart';
import 'package:clinic_app/views/pages/patient/switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageWrapper extends StatelessWidget {
  const HomePageWrapper({super.key});

  Widget _buildBottomSheet(BuildContext context, ScrollController scrollController, double bottomSheetOffset) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 130.sp, height: 5.sp,
            margin: EdgeInsets.symmetric(vertical: 20.sp),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(100)
            ),
          ),
          Expanded(
            child: ListView(
              controller: scrollController,
              children: [
                // SizedBox(height: 20.sp),
                const Switcher(),
                SizedBox(height: 20.sp),
                
                // 
                AddPatientForm()
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: const Icon(Icons.add),
          onPressed: (){
            showFlexibleBottomSheet(
              minHeight: 0,
              initHeight: 0.5,
              maxHeight: 0.8,
              context: context,
              builder: _buildBottomSheet,
              anchors: [0, 0.5, 0.8],
              isSafeArea: true,
              bottomSheetBorderRadius: BorderRadius.vertical(top: Radius.circular(15.sp))
            );
          },
        ),
        body: Stack(
          children: [

            // List Of Patients --
            const PatientsView(),

            Column(
              children: [
                // AppBar --
                const ClinicAppBar(),
          
                // Search Text Field --
                SearchSection(),
              ],
            ),
          ],
        )
      ),
    );
  }
}