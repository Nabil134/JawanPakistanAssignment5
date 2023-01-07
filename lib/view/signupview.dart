import 'package:jawanpakistanassignment5/components/custom_button.dart';
import 'package:jawanpakistanassignment5/components/custom_textformfield.dart';
import 'package:jawanpakistanassignment5/view/loginview.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                /* first portion start here */
                Row(
                  children: [
                    GestureDetector(
                      child: Icon(Icons.arrow_back),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Fill Your Profile',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                 /* first portion end here */
                SizedBox(
                  height: 50,
                ),
                /* second portion start here */
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      height: 100,
                      width: 100,
                      image: AssetImage('images/img_2.png'),
                    ),
                  ],
                ),
                /* second portion end here */
                SizedBox(
                  height: 40,
                ),
                /* third portion start here */
                Column(
                  children: [
                    /* Full Name TextField start here*/
                    CustomTextFormField(title: 'Full Name'),
                    /* Full Name TextField end here*/
                    SizedBox(
                      height: 20,
                    ),
                    /* Nick Name TextField start here*/
                    CustomTextFormField(title: 'Nick Name'),

                    /* Nick Name TextField end here*/
                    SizedBox(
                      height: 20,
                    ),
                    /* Date Of Birth TextField start here*/
                    CustomTextFormField(
                      title: "Date of Birth",
                      suffix_icon: Icons.calendar_month_rounded,
                    ),
                    /* Date Of Birth TextField end here*/
                    SizedBox(
                      height: 20,
                    ),
                    /* Email TextField start here*/
                    CustomTextFormField(
                      title: "Email",
                      suffix_icon: Icons.mail_outline,
                    ),
                    /* Email TextField end here*/
                    SizedBox(
                      height: 20,
                    ),
                    /*Gender TextField start here*/
                    CustomTextFormField(
                      title: "Gender",
                      suffix_icon: Icons.arrow_drop_down,
                    ),
                    /*Gender TextField end here*/
                   /*third portion end here */
                    SizedBox(
                      height: 20,
                    ),
                     /*last portin start here*/
                    /*Elevated Continue Button start here*/
                    CustomButton(
                        name: "Continue",

                        
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        }),
                    /*Elevated Continue Button end here*/
                  /*last portin start here*/
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
