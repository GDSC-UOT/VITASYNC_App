import 'package:cached_network_image/cached_network_image.dart';
import 'package:clinic_app/views/constants/colors.dart';
import 'package:clinic_app/views/pages/profile/profile_page_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ClinicAppBar extends StatelessWidget {
  const ClinicAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CmsColors.offWhite,
      padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 20.sp),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ProfilePageWrapper())),
              child: Container(
                height: 45.sp, width: 45.sp,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(100)
                ),
                child: CachedNetworkImage(
                  imageUrl: "https://source.unsplash.com/random",
                  progressIndicatorBuilder: (context, url, progress) => const Center(child: CircularProgressIndicator(strokeWidth: 20, color: Color.fromARGB(255, 221, 221, 221))),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SvgPicture.asset("assets/svg/Vitasync.svg")
          ],
        ),
      ),
    );
  }
}