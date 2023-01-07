import 'package:flutter/material.dart';
import 'package:jawanpakistanassignment5/components/custom_button.dart';
import 'package:jawanpakistanassignment5/components/custom_passwordtextfield.dart';
import 'package:jawanpakistanassignment5/components/custom_textformfield.dart';
import 'package:jawanpakistanassignment5/view/homepageview.dart';
import 'package:jawanpakistanassignment5/view/signupview.dart';

import '../components/horizontal_listview.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isTap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          /* first portion start here */
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                height: 100,
                width: 100,
                image: AssetImage('images/img1.png'),
              ),
            ],
          ),
          /* first portion end here */
          SizedBox(
            height: 40,
          ),
          /* second portion start here */
          Column(
            children: [
              Text(
                'Login to Your Account',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ],
          ),

          /*second portion end here */
          SizedBox(
            height: 20,
          ),
          /*third portion start here */
          Column(
            children: [
              /* Email TextField start here*/
              CustomTextFormField(
                title: 'Email',
                icon: Icons.email,
              ),
              /* Email TextField end here*/
              SizedBox(
                height: 20,
              ),
              /* Password TextField start here*/
              CustomPasswordTextFormField(
                title: 'Password',
                icon: Icons.lock,
                input_type: true,
              ),
              /* Password TextField end here*/
            ],
          ),
          Row(
               mainAxisAlignment:MainAxisAlignment.center,
            children:[
         
            InkWell(
              onTap:(){
               setState(() {
                _isTap =!_isTap;

              });
              },
              child:Icon(
                 color: Color(0xff006dff),
                   _isTap? Icons.check_box_rounded :Icons.check_box_outline_blank),
              ),
            
            Text('Remember me'),
          ]),
          /*third portion end here */
          SizedBox(
            height: 20,
          ),
          /*Elevated Button start here*/
          CustomButton(
              name: "Sign In",
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (ctx) => HomePage(),
                  ),
                );
              }),
          /*Elevated Button end here*/
          SizedBox(
            height: 10,
          ),
          /*forth portion start and Forget the password portion start here */
          Text(
            'Forget the password?',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
          ),
          /*forth portion end and Forget the password portion end here */
          SizedBox(
            height: 10,
          ),
          /*firth portion  start here */
          Text(
            'or continue with',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          HorizontalList(),
          /*firth portion  end here */
          SizedBox(
            height: 10,
          ),

          /*Last Portion start here*/
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t Have an account?',
                style: TextStyle(fontSize: 16),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
                child: Text(
                  ' Sign Up',
                  style: TextStyle(
                      fontSize: 16, color: Theme.of(context).primaryColor),
                ),
              ),
            ],
          ),
          /*Last Portion end here*/
        ],
      )),
    );
  }
}
