import 'package:flutter/material.dart';
import 'package:jawanpakistanassignment5/view/loginwithsocialaccountview.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Category(image: 'images/apple-logo.png'),
          Category(image: 'images/Facebook-logo.png'),
          Category(image: 'images/images.png'),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image;
  Category({required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: InkWell(
        onTap: () {
          
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginWithSocialAccount()),
          );
        
        },
        child: Container(
          width: 100,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            //color: Colors.blue,
          ),
          child: Image.asset(
            image,
            width: 50,
            height: 50,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
