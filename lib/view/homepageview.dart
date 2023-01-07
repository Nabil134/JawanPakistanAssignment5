import 'package:flutter/material.dart';
import 'package:jawanpakistanassignment5/view/housedetailview.dart';
import 'package:jawanpakistanassignment5/components/houses_container.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int currentIndex = 0;
  setIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                /*first portion start here */
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff0F2F44).withOpacity(.56)),
                        ),
                        Text(
                          'Los Angelas, CA',
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff0F2F44)),
                        ),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 20,
                      child: Image.asset('images/img_3.png'),
                    ),
                  ],
                ),
                /*first portion end here */
                SizedBox(
                  height: 30,
                ),
                /*second portion start here */
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Discover Best',
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                    Text(
                      'Suitable Property',
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ],
                ),
                /*second portion end here */
                SizedBox(
                  height: 30,
                ),
                /*third portion start here*/

                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        /*first container start here*/
                        Container(
                          width: 90,
                          height: 42,
                          padding: EdgeInsets.fromLTRB(15, 12, 12, 12),
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Color(0Xff00F2F44),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'House',
                            style: TextStyle(
                              color: Color(0xffFCFCFC),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        /*first container end here*/
                        /*second container start here*/
                        Container(
                          width: 135,
                          height: 42,
                          padding: EdgeInsets.fromLTRB(15, 12, 12, 12),
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Color(0XffEAF1FF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Apartment',
                            style: TextStyle(
                              color: Color(0xff0E3146),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        /*second container end here*/
                        /*third container start here*/
                        Container(
                          width: 70,
                          height: 42,
                          padding: EdgeInsets.fromLTRB(15, 12, 12, 12),
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Color(0XffEAF1FF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Flot',
                            style: TextStyle(
                              color: Color(0xff0E3146),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        /*third container end here*/
                        /*forth container start here*/
                        Container(
                          width: 135,
                          height: 42,
                          padding: EdgeInsets.fromLTRB(15, 12, 12, 12),
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Color(0XffEAF1FF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Defense',
                            style: TextStyle(
                              color: Color(0xff0E3146),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        /*forth container end here*/
                        /*fifth container start here*/
                        Container(
                          width: 135,
                          height: 42,
                          padding: EdgeInsets.fromLTRB(15, 12, 12, 12),
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Color(0XffEAF1FF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Dormitory',
                            style: TextStyle(
                              color: Color(0xff0E3146),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        /*fifth container end here*/
                      ],
                    ),
                  ),
                ),

                /*third portion end here*/
                /*forth portion start here */
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Best for you',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff0F2F44),
                  ),
                ),
                /*forth portion end here */
                SizedBox(
                  height: 10,
                ),
                /*fifth portion start here */
                GestureDetector(
                  onTap: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HouseDetail()),
                    );
                  }),
                  child: HousesContainer(),
                ),
                /*fifth portion end here */
                SizedBox(
                  height: 10,
                ),
                /*sixth portion start here */
                Text(
                  'Nearby your location',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff0F2F44),
                  ),
                ),
                /*fixth portion end here */
                SizedBox(
                  height: 10,
                ),
                /*last portion start here */
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffEAF1FF),
                  ),
                  child: Row(children: [
                    Image.asset(
                      'images/img_8.png',
                      height: 100,
                      width: 100,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'RANCH HOME',
                          style: TextStyle(color: Color(0Xff0F2F44)),
                        ),
                        Text(
                          '520 N Btoudy Ave Los Angeles',
                          style: TextStyle(color: Color(0Xff0F2F44)),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'images/img_5.png',
                              height: 20,
                            ),
                            Text(
                              ' 4 Beds',
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
                              ' 4 Baths',
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
                              '1 Garage',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]),
                ),
                /*last portion end here */
              ],
            ),
          ),
        ),
      ),
      /*bottomNavigationBar start here */
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0Xff0F2F44),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: currentIndex == 0 ? Colors.white : Colors.black,
            ),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: currentIndex == 0 ? Colors.white : Colors.black,
            ),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark_border,
              color: currentIndex == 0 ? Colors.white : Colors.black,
            ),
            label: ' ',
          ),
        ],
      ),

      /*bottomNavigationBar end here */
    );
  }
}
