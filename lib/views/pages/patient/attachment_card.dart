import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AttachmentCard extends StatelessWidget {
  const AttachmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100.sp, width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20.sp, horizontal: 20.sp),
      margin: EdgeInsets.only(bottom: 10.sp),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 239, 239, 239),
        borderRadius: BorderRadius.circular(15.sp),
      ),
      child: Row(
        children: [
          const Icon(Icons.file_copy_rounded, color: Colors.grey),
          SizedBox(width: 20.sp),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Xray.pdf",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600
                ),
              ),
              Text(
                "2024 - 3 - 2",
                style: TextStyle(
                  fontSize: 18.sp,
                  // fontWeight: FontWeight.w600
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}