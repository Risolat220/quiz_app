import 'package:flutter/material.dart';
import '../theme/colors.dart';

Widget buildOutlinedButton(String text, String route, BuildContext context) {
  return SizedBox(
    width: 200,
    height: 50,
    child: OutlinedButton(
      onPressed: () => Navigator.pushNamed(context, route),
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: AppColors.mainColor, width: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    ),
  );
}
