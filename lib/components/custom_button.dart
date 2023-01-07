import 'package:flutter/material.dart';
import 'package:jawanpakistanassignment5/view/homepageview.dart';

class CustomButton extends StatelessWidget {
  final String name;

  final Function()? onPressed;
  CustomButton({required this.name, required this.onPressed });
  @override
  Widget build(BuildContext context) {
    return /*Elevated Button start here*/
        Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed:onPressed,
        child: Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
    );
    /*Elevated Button end here*/
  }
}
