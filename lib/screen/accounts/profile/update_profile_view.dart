import 'dart:math';

// import 'package:da_techno/Screens/change_password.dart';
import 'package:da_techno_app/class/textarea_edit.dart';
import 'package:da_techno_app/screen/accounts/profile/change_password_view.dart';
import 'package:flutter/material.dart';
import 'package:avatars/avatars.dart';
import 'package:flutter/services.dart';

// import '../textarea.dart';

class UpdateProfileView extends StatefulWidget {
  const UpdateProfileView({Key? key}) : super(key: key);

  @override
  State<UpdateProfileView> createState() => _UpdateProfileViewState();
}

class _UpdateProfileViewState extends State<UpdateProfileView> {
  String? email;
  String? name;
  String? phNumber;
  String? city;
  String? state;

  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 250,
                          width: MediaQuery.of(context).size.width,
                          child: Image(
                              image: AssetImage('assets/background.png'),
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                    Positioned(
                      top: 220,
                      // top: 250,
                      left: MediaQuery.of(context).size.width * 0.43,
                      right: MediaQuery.of(context).size.width * 0.43,
                      child: Avatar(
                        elevation: 4,
                        loader: Text('HI'),
                        placeholderColors: [
                          Color(0xffe61e91),
                          Color(0xffe61e91),
                          Color(0xffe61e91),
                        ],
                        // backgroundColor: Colors.black,
                        name: 'Aayush Shah',
                        textStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        shape: AvatarShape.rectangle(
                          60,
                          60,
                          BorderRadius.all(
                            new Radius.circular(10.0),
                          ),
                        ),
                      ),
                      // Avatar(value: '89'),
                      // Container(
                      //   child: Text('AS'),
                      //   color: Colors.green,
                      // ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CircleAvatar(
                          maxRadius: 15,
                          backgroundColor: Colors.grey[50],
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            size: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text(
                      //   'Mobile Number',
                      //   style: TextStyle(fontWeight: FontWeight.w600),
                      // ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      // TextFormField(
                      //   validator: ((value) {
                      //     return '$value';
                      //   }),
                      //   keyboardType: TextInputType.phone,
                      //   inputFormatters: [
                      //     LengthLimitingTextInputFormatter(10), // for mobile
                      //   ],
                      //   decoration: InputDecoration(
                      //     border: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(10),
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 20,
                      // ),
                      // Text(
                      //   'Full Name',
                      //   style: TextStyle(fontWeight: FontWeight.w600),
                      // ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      // TextFormField(
                      //   inputFormatters: [
                      //     LengthLimitingTextInputFormatter(30), // for mobile
                      //   ],
                      //   decoration: InputDecoration(
                      //     border: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(10),
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 20,
                      // ),
                      // Text(
                      //   'Email',
                      //   style: TextStyle(fontWeight: FontWeight.w600),
                      // ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      // TextFormField(
                      //   keyboardType: TextInputType.emailAddress,
                      //   inputFormatters: [
                      //     LengthLimitingTextInputFormatter(30), // for mobile
                      //   ],
                      //   decoration: InputDecoration(
                      //     border: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(10),
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 20,
                      // ),
                      // Text(
                      //   'City',
                      //   style: TextStyle(fontWeight: FontWeight.w600),
                      // ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      // TextFormField(
                      //   inputFormatters: [
                      //     LengthLimitingTextInputFormatter(15), // for mobile
                      //   ],
                      //   decoration: InputDecoration(
                      //     border: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(10),
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 20,
                      // ),
                      // Text(
                      //   'State',
                      //   style: TextStyle(fontWeight: FontWeight.w600),
                      // ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      // TextFormField(
                      //   inputFormatters: [
                      //     LengthLimitingTextInputFormatter(20), // for mobile
                      //   ],
                      //   decoration: InputDecoration(
                      //     border: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(10),
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 50,
                      // ),

                      TextArea(
                        length: 10,
                        onSaved: (value) {
                          setState(() {
                            phNumber = value;
                          });
                        },
                        hintText: 'Mobile Number',
                        // isEmail: true,
                        place: "phNumber",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextArea(
                        length: 50,
                        onSaved: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                        hintText: 'Full Name',
                        place: 'name',
                        // isEmail: true,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextArea(
                        length: 50,
                        onSaved: (value) {
                          setState(() {
                            email = value;
                          });
                        },
                        hintText: 'Email',
                        isEmail: true,
                        place: "email",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextArea(
                        length: 20,
                        // onChange: (value) {
                        //   print('in onchange');
                        //   setState(
                        //     () {
                        //       print(value);
                        //       city = value;
                        //       print(city);
                        //     },
                        //   );
                        // },
                        onSaved: (value) {
                          setState(() {
                            city = value;
                          });
                        },
                        hintText: 'City',
                        // isEmail: true,
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      TextArea(
                        length: 50,
                        onSaved: (value) {
                          setState(() {
                            state = value;
                          });
                        },
                        hintText: 'State',
                        place: "state",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ChangePasswordView()),
                          );
                        },
                        // (){onPress;}
                        child: Text(
                          'CHANGE PASSWORD',
                          style: TextStyle(fontSize: 16),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          primary: Colors.black,
                          minimumSize: const Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        onPressed: () {
                          final isValid = formKey.currentState!.validate();
                          if (isValid) {
                            formKey.currentState!.save();
                          }
                          print('$city $email $name $phNumber $state');
                        },
                        // (){onPress;}
                        child: Text(
                          'SAVE DETAILS',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xffb6d87b),
                          primary: Colors.black,
                          minimumSize: const Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
