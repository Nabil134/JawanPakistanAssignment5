import 'package:flutter/material.dart';

class gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'images/img_11.png',
            height: 65,
            width: 98,
          ),
          Image.asset(
            'images/img_12.png',
            height: 65,
            width: 98,
          ),
          Image.asset(
            'images/img_13.png',
            height: 65,
            width: 98,
          ),
          Image.asset(
            'images/img_14.png',
            height: 65,
            width: 98,
          ),
        ],
      ),
    );
  }
}
