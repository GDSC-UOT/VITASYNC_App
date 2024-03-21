import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Switcher extends StatelessWidget {
  const Switcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ToggleSwitch(
          initialLabelIndex: 0,
          totalSwitches: 3,
          labels: const ['Patient', 'Reminders', 'Health Tips'],
          onToggle: (index) {},
          activeBgColor: const [Colors.blue],
          inactiveBgColor: Colors.blue.withOpacity(0.1),
          fontSize: 16.sp,
          minWidth: MediaQuery.of(context).size.width - 20.sp,
          animate: true,
          animationDuration: 100,
        ),
      ],
    );
  }
}