import 'package:flutter/material.dart';
import 'package:jawanpakistanassignment5/components/horizontal_gallery_listview.dart';

class HouseDetail extends StatefulWidget {
  @override
  State<HouseDetail> createState() => _HouseDetailState();
}

class _HouseDetailState extends State<HouseDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                /*first portion start here*/
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Details',
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(color: Color(0XfffEAF1FF)),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios)),
                    ),
                  ],
                ),
                /*first portion end here*/
                SizedBox(
                  height: 35,
                ),
                /*second portion start here*/
                Container(
                  child: Image.asset('images/img_9.png'),
                ),
                /*second portion end here*/
                SizedBox(
                  height: 35,
                ),
                /*third portion start here*/
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'CRAFTSMAN HOUSE',
                            style: TextStyle(fontSize: 24, color: Colors.black),
                          ),
                          Text(
                            '520 N Btoudy Ave Los Angeles',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(color: Color(0Xfffd6e0e9)),
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.bookmark)),
                      ),
                    ],
                  ),
                ),
                /*third portion end here*/

                SizedBox(
                  height: 10,
                ),
                /*forth portion start here*/
                Container(
                  child: Row(
                    children: [
                      Image.asset(
                        'images/img_5.png',
                        height: 20,
                      ),
                      Text(
                        '   4 Beds',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'images/img_6.png',
                        height: 20,
                      ),
                      Text(
                        '  4 Baths',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        'images/img_7.png',
                        height: 20,
                      ),
                      Text(
                        '  1 Garage',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                /*forth portion end here*/
                SizedBox(
                  height: 10,
                ),
                /*fifth portion start here*/
                Container(
                  child: ListTile(
                    leading: Image.asset('images/img_10.png'),
                    title: Text(
                      'Rebbecca Tetha',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0Xff0F2F44),
                        fontWeight: FontWeight.bold,
                        letterSpacing: -0.03,
                      ),
                    ),
                    subtitle: Text(
                      'Owner Craftsman House',
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(0Xff0F2F44).withOpacity(0.5),
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.03,
                      ),
                    ),
                    trailing: Container(
                      height: 30,
                      width: 84,
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        color: Color(0Xff0F2F44),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.call,
                            color: Colors.white,
                            size: 20,
                          ),
                          Text(
                            'Call',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.03,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                /*fifth portion end here*/
                /*sixth portion start here*/
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  width: 305,
                  color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Completely redone in 2021. 4 bedrooms. 2 bathrooms.',
                        style: TextStyle(
                          fontSize: 12,
                          letterSpacing: 0.03,
                          fontWeight: FontWeight.w400,
                          color: Color(0Xff0F2F44),
                        ),
                      ),
                      Text(
                        '1 garahe .amazing curb oppeal and enterain areawater.',
                        style: TextStyle(
                          fontSize: 12,
                          letterSpacing: 0.03,
                          fontWeight: FontWeight.w400,
                          color: Color(0Xff0F2F44),
                        ),
                      ),
                      Text(
                        'vews Tons of built-ins & extras. ',
                        style: TextStyle(
                          fontSize: 12,
                          letterSpacing: 0.03,
                          fontWeight: FontWeight.w400,
                          color: Color(0Xff0F2F44),
                        ),
                      ),
                      Text(
                        'Read More',
                        style: TextStyle(
                          fontSize: 12,
                          letterSpacing: 0.03,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                /*sixth portion end here*/
                /*seventh portion start here*/
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 350, 0),
                  child: Text(
                    'Gallery',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.03,
                      color: Color(0xff0F2F44),
                    ),
                  ),
                ),
                /*seventh portion end here*/
                SizedBox(
                  height: 10,
                ),
                /*eight portion start here*/
                gallery(),
                /*eight portion end here*/
                SizedBox(
                  height: 20,
                ),
                /*ninth portion start here*/
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$ 5990000',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff0F2F44),
                          letterSpacing: -0.03,
                        ),
                      ),
                      Container(
                        height: 36,
                        width: 128,
                        padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                        decoration: BoxDecoration(
                          color: Color(0xff0103144),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'BUY NOW',
                          style: TextStyle(
                            color: Color(0xff0FFFFFF),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                /*ninth portion end here*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
