import 'package:da_techno_app/controller/bottom_nav_bar.dart';
import 'package:da_techno_app/screen/register/register_view.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/cupertino.dart';
import 'package:animated_button/animated_button.dart';
// import 'package:sign_button/sign_button.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:auth_buttons/auth_buttons.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

void _showButtonPressDialog(BuildContext context, String provider) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text('$provider Button Pressed!'),
    backgroundColor: Colors.black26,
    duration: Duration(milliseconds: 400),
  ));
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.asset("assets/login.json", height: 250, width: 250),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Login Account",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                          fontSize: 22.5)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: TextFormField(
                  cursorColor: Colors.grey,
                  // controller: userInput,
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xffFF4E00),
                    fontWeight: FontWeight.normal,
                    // fontFamily: "Raleway",
                  ),
                  onChanged: (value) {
                    setState(() {
                      // userInput.text = value.toString();
                    });
                  },
                  validator: (value) {
                    if (value!.length < 2) {
                      return "enter  correct";
                    }
                  },
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    //add prefix icon
                    prefixIcon: Icon(
                      Icons.email_rounded,
                      color: Color(0xffFF4E00),
                    ),

                    // errorText: "Error",

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.grey,

                    hintText: "Enter email",

                    //make hint text
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      // fontFamily: "verdana_regular",
                      fontWeight: FontWeight.w400,
                    ),

                    //create lable
                    labelText: 'Email',
                    //lable style
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      // fontFamily: "verdana_regular",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: TextFormField(
                  obscureText: true,
                  cursorColor: Colors.grey,
                  // controller: userInput,
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xffFF4E00),
                    fontWeight: FontWeight.normal,
                  ),
                  onChanged: (value) {
                    setState(() {
                      // userInput.text = value.toString();
                    });
                  },
                  validator: (value) {
                    if (value!.length < 2) {
                      return "enter  correct";
                    }
                  },
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    //add prefix icon
                    prefixIcon: Icon(
                      Icons.password,
                      color: Color(0xffFF4E00),
                    ),

                    // errorText: "Error",

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.grey,

                    hintText: "Enter password",

                    //make hint text
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      // fontFamily: "verdana_regular",
                      fontWeight: FontWeight.w400,
                    ),

                    //create lable
                    labelText: 'Password',
                    //lable style
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      // fontFamily: "verdana_regular",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffFF4E00),
                    ),
                    child: CupertinoButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomNavBar()),
                        );
                      },
                      child: AutoSizeText(
                        "login".toUpperCase(),
                        style: TextStyle(color: Colors.white),
                        presetFontSizes: [40, 20, 14],
                        maxLines: 4,
                      ),
                      padding: EdgeInsets.all(10),
                    )),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              //   child: AnimatedButton(
              //     width: MediaQuery.of(context).size.width * 0.5,
              //     color: Color(0xffFF4E00),
              //     shadowDegree: ShadowDegree.dark,
              //     enabled: true,
              //     onPressed: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(builder: (context) => BottomNavBar()),
              //       );
              //     },
              //     child: Text(
              //       "LOGIN",
              //       style: TextStyle(
              //           color: Colors.white,
              //           fontSize: 20,
              //           fontWeight: FontWeight.w600),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 17.5, color: Colors.black54),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterView()),
                      );
                    },
                    child: Text(
                      "Register here!",
                      style: TextStyle(fontSize: 17.5, color: Colors.blue),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: GoogleAuthButton(
                    onPressed: () {},
                    darkMode: false,
                    style: AuthButtonStyle(
                      iconType: AuthIconType.secondary,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: FacebookAuthButton(
                    onPressed: () {},
                    darkMode: false,
                    style: AuthButtonStyle(
                      iconType: AuthIconType.secondary,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 75,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
