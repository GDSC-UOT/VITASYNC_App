import 'package:clinic_app/routing/route_builder.dart';
import 'package:clinic_app/views/pages/home/home_page_wrapper.dart';
import 'package:clinic_app/views/pages/patient/patient_page_wrapper.dart';
import 'package:clinic_app/views/pages/profile/profile_page_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


final router = GoRouter(
  initialLocation: '/',
  routes: [
    routeBuilder(
      path: '/',
      child: (context, state) => const HomePageWrapper(),
      routes: [
        routeBuilder(
          path: 'patient',
          child: (context, state) => const PatientPageWrapper(),
          routes: []
        ),
        routeBuilder(
          path: 'profile',
          child: (context, state) => const ProfilePageWrapper(),
          routes: []
        ),
      ]
    ),
  ],
  errorPageBuilder: (context, state) => MaterialPage(child: Scaffold(
    body: Center(child: Text(state.error.toString())),
  )),
);