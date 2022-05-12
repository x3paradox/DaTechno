import 'package:auto_size_text/auto_size_text.dart';
import 'package:da_techno_app/screen/login/login_view.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/cupertino.dart';
import 'package:animated_button/animated_button.dart';
// import 'package:sign_button/sign_button.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

void _showButtonPressDialog(BuildContext context, String provider) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text('$provider Button Pressed!'),
    backgroundColor: Colors.black26,
    duration: Duration(milliseconds: 400),
  ));
}

class _RegisterViewState extends State<RegisterView> {
  final formKey = GlobalKey<FormState>();

  TextEditingController registerUserName = TextEditingController();

  TextEditingController registerPassword = TextEditingController();
  TextEditingController registerConfirmPassword = TextEditingController();
  TextEditingController registerEmail = TextEditingController();

  bool loader = false;

  bool hidePassword = true;
  bool isPassword = true;
  bool isConfirm = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset("assets/login.json", height: 250, width: 250),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Register Account",
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
                    controller: registerUserName,
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xffFF4E00),
                      fontWeight: FontWeight.normal,
                      // fontFamily: "Raleway",
                    ),
                    // onChanged: (value) {
                    //   setState(() {
                    //     registerUserName.text = value.toString();
                    //   });
                    // },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      focusColor: Colors.white,
                      //add prefix icon
                      prefixIcon: Icon(
                        Icons.person,
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

                      hintText: "Enter Name",

                      //make hint text
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        // fontFamily: "verdana_regular",
                        fontWeight: FontWeight.w400,
                      ),

                      //create lable
                      labelText: 'Name',
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
                    // obscureText: true,
                    cursorColor: Colors.grey,
                    controller: registerEmail,
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xffFF4E00),
                      fontWeight: FontWeight.normal,
                    ),
                    // onChanged: (value) {
                    //   setState(() {
                    //     registerEmail.text = value.toString();
                    //   });
                    // },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter email/mobile no.';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      focusColor: Colors.white,
                      //add prefix icon
                      prefixIcon: Icon(
                        Icons.email,
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

                      hintText: "Enter email/mobile no.",

                      //make hint text
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        // fontFamily: "verdana_regular",
                        fontWeight: FontWeight.w400,
                      ),

                      //create lable
                      labelText: 'Email/Mobile No.',
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
                    obscureText: isPassword,
                    cursorColor: Colors.grey,
                    controller: registerPassword,
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xffFF4E00),
                      fontWeight: FontWeight.normal,
                    ),
                    // onChanged: (value) {
                    //   setState(() {
                    //     registerPassword.text = value.toString();
                    //   });
                    // },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter password';
                      }
                      if (value.length < 4) {
                        return 'Must be more than 4 charater';
                      }
                      if (value.length > 12) {
                        return 'Must be lesser than 12 charater';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      focusColor: Colors.white,
                      //add prefix icon
                      prefixIcon: Icon(
                        Icons.password,
                        color: Color(0xffFF4E00),
                      ),
                      suffixIcon: InkWell(
                        child: Icon(
                          isPassword ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onTap: () {
                          setState(() {
                            // ignore: unnecessary_statements
                            isPassword = !isPassword;
                          });
                        },
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
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: TextFormField(
                    obscureText: isConfirm,
                    cursorColor: Colors.grey,
                    controller: registerConfirmPassword,
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xffFF4E00),
                      fontWeight: FontWeight.normal,
                    ),
                    // onChanged: (value) {
                    //   setState(() {
                    //     registerConfirmPassword.text = value.toString();
                    //   });
                    // },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter confirm-password';
                      }
                      if (value != registerPassword.text)
                        return 'Password not match';

                      return null;
                    },
                    decoration: InputDecoration(
                      focusColor: Colors.white,
                      //add prefix icon
                      prefixIcon: Icon(
                        Icons.password,
                        color: Color(0xffFF4E00),
                      ),
                      suffixIcon: InkWell(
                        child: Icon(
                          isConfirm ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onTap: () {
                          setState(() {
                            // ignore: unnecessary_statements
                            isConfirm = !isConfirm;
                          });
                        },
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

                      hintText: "Enter confirm password",

                      //make hint text
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        // fontFamily: "verdana_regular",
                        fontWeight: FontWeight.w400,
                      ),

                      //create lable
                      labelText: 'Confirm-Password',
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
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffFF4E00),
                      ),
                      child: CupertinoButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            setState(() {
                              loader = true;
                            });
                          }
                        },
                        child: AutoSizeText(
                          "register".toUpperCase(),
                          style: TextStyle(color: Colors.white),
                          presetFontSizes: [40, 20, 14],
                          maxLines: 4,
                        ),
                        padding: EdgeInsets.all(10),
                      )),
                ),
                // AnimatedButton(
                //   width: MediaQuery.of(context).size.width * 0.9,
                //   color: Color(0xffFF4E00),
                //   shadowDegree: ShadowDegree.dark,
                //   enabled: true,
                //   onPressed: () {
                //     if (formKey.currentState!.validate()) {
                //       setState(() {
                //         loader = true;
                //       });
                //     }
                //   },
                //   child: Text(
                //     "REGISTER",
                //     style: TextStyle(
                //         color: Colors.white,
                //         fontSize: 20,
                //         fontWeight: FontWeight.w600),
                //   ),
                // ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(fontSize: 17.5, color: Colors.black54),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginView()),
                        );
                      },
                      child: Text(
                        "Login here!",
                        style: TextStyle(fontSize: 17.5, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
