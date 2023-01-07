import 'package:flutter/material.dart';

class HousesContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: double.infinity,
      //width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff0F2F44),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          /*first portion start here */
          Container(
            child: Image.asset('images/img_4.png'),
          ),
          /*first portion end here */
          Container(
            padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*second portion start here */
                Text(
                  'CRAFTSMAN HOUSE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  '520 N Btoudy Ave Los Angeles',
                  style: TextStyle(
                    color: Colors.white.withOpacity(.42),
                    fontSize: 16,
                  ),
                ),
                /*second portion end here */
                /*last portion start here*/
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                  child: Row(
                    children: [
                      Image.asset('images/img_5.png'),
                      Text(
                        '4 Beds',
                        style: TextStyle(color: Colors.white.withOpacity(.42)),
                      ),
                      Image.asset('images/img_6.png'),
                      Text(
                        '4 Baths',
                        style: TextStyle(color: Colors.white.withOpacity(.42)),
                      ),
                      Image.asset('images/img_7.png'),
                      Text(
                        '1 Garage',
                        style: TextStyle(color: Colors.white.withOpacity(.42)),
                      ),
                    ],
                  ),
                ),
                /*last portion start here*/
              ],
            ),
          ),
        ],
      ),
    );
  }
}
