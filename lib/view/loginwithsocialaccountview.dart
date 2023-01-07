import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:jawanpakistanassignment5/view/signupview.dart';
import 'package:jawanpakistanassignment5/components/custom_button.dart';

class LoginWithSocialAccount extends StatefulWidget {
  @override
  State<LoginWithSocialAccount> createState() => _LoginWithSocialAccountState();
}

class _LoginWithSocialAccountState extends State<LoginWithSocialAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(
        child: 
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
       child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
             /* first portion start here */
            Row(children:[
               GestureDetector(
                      child: Icon(Icons.arrow_back),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
            ]),
             /* first portion end here */
            SizedBox(
              height: 20,
            ),
            
            /* second portion start here */
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/img3.png'),
                    ),
                  ),
                ),
              ],
            ),
            /* second portion start here */
            SizedBox(
              height: 5,
            ),
            /* third portion start here */
            Column(
              children: [
                Text(
                  'Let\'s you in',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            /* third portion end here */
            SizedBox(
              height: 20,
            ),
            /* forth portion start here */
            Column(
              children: [
                SignInButton(
                  Buttons.Facebook,
                  text: "Continue with Facbook",
                  onPressed: () {},
                ),
                SizedBox(
                  height: 15,
                ),
                SignInButton(
                  Buttons.Google,
                  text: "Continue with Google",
                  onPressed: () {},
                ),
                SizedBox(
                  height: 15,
                ),
                SignInButton(
                  Buttons.Apple,
                  text: "Continue with Apple",
                  onPressed: () {},
                ),
              ],
            ),
            /* forth portion end here */
            SizedBox(
              height: 20,
            ),
            /* fifth portion start here */
            Text(
              'or ',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            /* fifth portion end here */
            SizedBox(
              height: 10,
            ),
            /* sixth portion start here */
            /*Elevated Button start here*/
           CustomButton(name:'Sign in with password',
           onPressed:(){

           }),
            /*Elevated Button end here*/
            /* sixth portion end here */
            SizedBox(
              height: 10,
            ),
            /* last portion start here */
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
            /* last portion end here */
          ],
        ),
      ),
      ),
    );
  }
}
