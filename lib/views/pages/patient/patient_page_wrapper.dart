import 'package:cached_network_image/cached_network_image.dart';
import 'package:clinic_app/views/pages/patient/attachment_card.dart';
import 'package:clinic_app/views/pages/patient/info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PatientPageWrapper extends StatelessWidget {
  const PatientPageWrapper({super.key});

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
                  "Patient",
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
                Column(
                  children: [
                    SizedBox(height: 50.sp),
                    Container(
                      height: 140.sp, width: 140.sp,
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
                      "Ali Jamal",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "Age 18",
                      style: TextStyle(
                        fontSize: 16.sp,
                      ),
                    ),
                    Text(
                      "Surgeon",
                      style: TextStyle(
                        fontSize: 16.sp,
                      ),
                    ),

                    SizedBox(height: 30.sp),

                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Symptoms",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 10.sp),
                          Text(
                            "Aute aute labore laboris ad. Magna esse labore elit id dolore cupidatat mollit magna est id ipsum. Sunt amet esse ipsum labore et dolor sunt nulla sit. Dolor aliquip do reprehenderit dolore laborum occaecat in. Culpa excepteur duis ullamco eiusmod amet officia aute ea occaecat.",
                            style: TextStyle(
                              fontSize: 18.sp,
                              // fontWeight: FontWeight.bold
                            ),
                          ),
                      
                          SizedBox(height: 10.sp),
                      
                          Text(
                            "Pharmaceutical",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 10.sp),
                          Text(
                            "Aute aute labore laboris ad. Magna esse labore elit id dolore cupidatat mollit magna est id ipsum.",
                            style: TextStyle(
                              fontSize: 18.sp,
                              // fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              
                // Attachments
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(height: 20.sp),

                    Text(
                      "Attachments",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold
                      ),
                    ),

                    SizedBox(height: 10.sp),

                    Column(
                      children: List.generate(3, (index) => const AttachmentCard()),
                    )
                  ],
                ),

                // More Info
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(height: 20.sp),

                    Column(
                      children: List.generate(3, (index) => const InfoCard()),
                    )
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