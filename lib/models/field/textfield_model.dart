import 'package:flutter/material.dart';

class TextFieldModel {
  late String name;
  late String lable;
  late IconData? icon;
  late String? regex;
  late TextEditingController controller;
  late FocusNode focusNode;
  late TextInputType? keyboardType;
  late TextInputAction? textInputAction;
  late bool? isPassword;
  late Function(String value)? onChange;
  late Function(FocusNode focusNode, BuildContext context)? onFocusChange;

  TextFieldModel({
    required this.name,
    required this.lable,
    required this.controller,
    required this.focusNode,
    this.regex,
    this.keyboardType,
    this.textInputAction,
    this.icon,
    this.isPassword,
    this.onChange,
    this.onFocusChange,
  });
}