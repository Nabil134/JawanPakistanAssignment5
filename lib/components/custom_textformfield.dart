import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  IconData? icon;
  IconData? suffix_icon;
  CustomTextFormField({required this.title, this.icon, this.suffix_icon});
  @override
  Widget build(BuildContext context) {
    return /* Email TextField start here*/
        Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.04),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.withOpacity(.1)),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            icon: Icon(icon),
            suffixIcon: Icon(suffix_icon),
            hintText: title,
          ),
        ),
      ),
    );
    /* Email TextField end here*/
  }
}
