// ignore_for_file: use_build_context_synchronously

import 'package:cached_network_image/cached_network_image.dart';
import 'package:clinic_app/views/pages/patient/patient_page_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PatientCard extends StatelessWidget {
  final int index;
  PatientCard({super.key, required this.index});

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 10,
          spreadRadius: 0
        )],
      ),
      child: Material(
        borderRadius: BorderRadius.circular(10.sp),
        child: InkWell(
          borderRadius: BorderRadius.circular(10.sp),
          onTap: () async {
            if ( !isLoading ) {
              isLoading = true;
              // context.push("/patient");
              await Future.delayed(const Duration(milliseconds: 300));
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const PatientPageWrapper())
              );
              isLoading = false;
            }
          },
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.sp),
            child: FittedBox(
              child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 40.sp, width: 40.sp,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: CachedNetworkImage(
                      imageUrl: "https://source.unsplash.com/random/$index",
                      progressIndicatorBuilder: (context, url, progress) => const Center(child: CircularProgressIndicator(strokeWidth: 20, color: Color.fromARGB(255, 221, 221, 221))),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 20.sp),
                  Text(
                    "Ali Jamal",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Surgeon",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey
                    ),
                  ),
                  Text(
                    "ID :2346",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}