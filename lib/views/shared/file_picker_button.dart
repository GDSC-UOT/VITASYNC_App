import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilePickerButton extends StatelessWidget {
  const FilePickerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      borderRadius: BorderRadius.circular(16.sp),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.sp, horizontal: 20.sp),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.withOpacity(0.2)
          ),
          borderRadius: BorderRadius.circular(15.sp),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.file_upload_outlined, color: Colors.blue),
            SizedBox(width: 20.sp),
            Text(
              "Click to pick file",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.blue
              ),
            ),
          ],
        ),
      ),
    );
  }
}