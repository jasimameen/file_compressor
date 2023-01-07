// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:flutter/material.dart';

// custom button with fields for text, color, and function
class CustomButton extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final String text;
  final Color color;
  final Function() onTap;

  const CustomButton({
    Key? key,
    this.width,
    this.height,
    this.padding,
    required this.text,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? MediaQuery.of(context).size.width * 0.8,
        height: height ?? 50,
        padding: padding ?? const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontFamily: 'Raleway',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
