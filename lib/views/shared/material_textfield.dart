import 'package:clinic_app/models/textfield_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MaterialTextField extends StatelessWidget {
  final TextFieldDataObject textFieldObject;
  const MaterialTextField({super.key, required this.textFieldObject});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        filled: false,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(15.sp),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.withOpacity(0.8)),
          borderRadius: BorderRadius.circular(15.sp),
        ),
        labelText: textFieldObject.lable,
        labelStyle: const TextStyle(color: Colors.grey)
      ),
    );
  }
}