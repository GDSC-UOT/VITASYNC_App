import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.sp),
      child: Row(
        children: [
          Container(
            height: 80.sp, width: 80.sp,
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20.sp),
            ),
            child: const Icon(Icons.phone, color: Colors.blue),
          ),

          SizedBox(width: 20.sp),

          Column(
            children: [
              Text(
                "Phone Number",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                "+964 12345678",
                style: TextStyle(
                  fontSize: 18.sp,
                  // fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}