import 'package:flutter/material.dart';

import 'package:meal_monkey/common/color_extension.dart';

class RoundTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Color? bgColor;
  final Widget? left;
  const RoundTextField({
    Key? key,
    this.controller,
    required this.hintText,
    this.keyboardType,
    this.bgColor,
    this.left,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor ?? TColor.textfield,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          if (left != null)
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: left!,
            ),
          Expanded(
            child: TextField(
              autocorrect: false,
              controller: controller,
              keyboardType: keyboardType,
              obscureText: obscureText,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(
                  color: TColor.placeholder,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundTitleTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String title;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Color? bgColor;
  final Widget? left;

  const RoundTitleTextfield({
    Key? key,
    required this.title,
    required this.hintText,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.bgColor,
    this.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: bgColor ?? TColor.textfield,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          if (left != null)
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: left!,
            ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: 55,
                  margin: const EdgeInsets.only(top: 8),
                  alignment: Alignment.topLeft,
                  child: TextField(
                    autocorrect: false,
                    controller: controller,
                    obscureText: obscureText,
                    keyboardType: keyboardType,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: hintText,
                      hintStyle: TextStyle(
                        color: TColor.placeholder,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 55,
                  margin: const EdgeInsets.only(top: 10, left: 20),
                  alignment: Alignment.topLeft,
                  child: Text(
                    title,
                    style: TextStyle(color: TColor.placeholder, fontSize: 11),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
