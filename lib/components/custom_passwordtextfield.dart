import 'package:flutter/material.dart';

class CustomPasswordTextFormField extends StatelessWidget {
  final String title;
  IconData? icon;
  bool input_type;
  IconData? suffix_icon;

  CustomPasswordTextFormField({
    required this.title,
    this.icon,
    this.input_type = false,
    this.suffix_icon,
  });
  @override
  Widget build(BuildContext context) {
    return /* Password TextField start here*/
        Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.04),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.withOpacity(.1)),
        ),
        child: TextFormField(
          obscureText: input_type,
          decoration: InputDecoration(
            border: InputBorder.none,
            icon: Icon(icon),
            suffixIcon: Icon(suffix_icon),
            hintText: title,
          ),
        ),
      ),
    );
    /* Password TextField end here*/
  }
}
