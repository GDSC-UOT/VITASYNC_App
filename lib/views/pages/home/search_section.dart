import 'package:clinic_app/models/textfield_model.dart';
import 'package:clinic_app/views/constants/colors.dart';
import 'package:clinic_app/views/shared/material_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchSection extends StatelessWidget {
  SearchSection({super.key});

  final TextFieldDataObject searchTextField = TextFieldDataObject(
    controller: TextEditingController(),
    focusNode: FocusNode(),
    name: "Search",
    icon: Icons.search,
    lable: "Search",
    key: GlobalKey(),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.sp, right: 20.sp, bottom: 40.sp, top: 0.sp),
      decoration: BoxDecoration(
        color: Colors.red,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            CmsColors.offWhite,
            CmsColors.offWhite,
            CmsColors.offWhite,
            CmsColors.offWhite,
            CmsColors.offWhite,
            CmsColors.offWhite,
            CmsColors.offWhite,
            CmsColors.offWhite,
            CmsColors.offWhite,
            CmsColors.offWhite,
            // CmsColors.offWhite,
            CmsColors.offWhite.withOpacity(0.1),
            CmsColors.offWhite.withOpacity(0.1),
            CmsColors.offWhite.withOpacity(0.1),
            CmsColors.offWhite.withOpacity(0.1),
            CmsColors.offWhite.withOpacity(0.0),
          ]
        )
      ),
      child: Center(child: MaterialTextField(textFieldObject: searchTextField)),
    );
  }
}