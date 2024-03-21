import 'package:cached_network_image/cached_network_image.dart';
import 'package:clinic_app/views/pages/patient/attachment_card.dart';
import 'package:clinic_app/views/pages/patient/info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePageWrapper extends StatelessWidget {
  const ProfilePageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      body: Column(
        children: [
          SafeArea(
            bottom: false,
            child: Row(
              children: [
                SizedBox(width: 10.sp),
                const BackButton(),
                Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
        
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              children: [
                SizedBox(height: 20.sp),
                Container(
                  padding: EdgeInsets.all(20.sp),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15.sp)
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 120.sp, width: 120.sp,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: CachedNetworkImage(
                          imageUrl: "https://source.unsplash.com/random/",
                          progressIndicatorBuilder: (context, url, progress) => const Center(child: CircularProgressIndicator(strokeWidth: 20, color: Color.fromARGB(255, 221, 221, 221))),
                          fit: BoxFit.cover,
                        ),
                      ),
                  
                      SizedBox(height: 20.sp),
                  
                      Text(
                        "Dr. Imran",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                      Text(
                        "Age 48",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.white
                        ),
                      ),
                      Text(
                        "General Doctor",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.white
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20.sp),

                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: (){},
                        style: ButtonStyle(
                          padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 20.sp)),
                          backgroundColor: const MaterialStatePropertyAll(Colors.red),
                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.sp),
                            side: const BorderSide(color: Colors.red)
                          )),
                          side: const MaterialStatePropertyAll(BorderSide.none)
                        ),
                        child: const Text(
                          "Log out",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}