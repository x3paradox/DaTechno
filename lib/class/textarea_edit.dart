import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextArea extends StatelessWidget {
  final String? hintText;
  final void Function(String?)? onSaved;
  final bool isPassword;
  final bool isEmail;
  final String place;
  final int? length;
  final void Function(String)? onChange;

  TextArea({
    this.onChange,
    this.length,
    this.hintText,
    this.onSaved,
    this.isPassword = false,
    this.isEmail = false,
    this.place = 'a',
  });

  // const TextArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [
        LengthLimitingTextInputFormatter(length), // for mobile
      ],
      obscureText: place == 'password' ? true : false,
      keyboardType: place == 'phNumber'
          ? TextInputType.number
          : place == 'email'
              ? TextInputType.emailAddress
              : TextInputType.text,
      cursorColor: Colors.grey,
      // controller: userInput,
      style: TextStyle(
        fontSize: 16,
        color: Color(0xffFF4E00),
        fontWeight: FontWeight.normal,
      ),
      onChanged: onChange,
      // onChanged: onChange,
      onSaved: onSaved,
      validator: (value) {
        if (place == 'name') {
          if (value!.length < 3) {
            return "Enter correct name";
          } else {
            return null;
          }
        } else if (place == 'phNumber') {
          if (value!.length != 10) {
            return "Enter correct number";
          } else {
            return null;
          }
        } else if (place == 'email') {
          if (RegExp(
                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(value!)) {
            return null;
          } else {
            return "Enter correct email";
          }
        } else if (place == 'password') {
          if (value!.length < 8) {
            return "Enter atleast 8 character";
          } else {
            return null;
          }
        } else {
          if (value!.length < 1) {
            return "Enter correct details";
          } else {
            return null;
          }
        }
        return null;
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
          borderSide: const BorderSide(color: Colors.blue, width: 1.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        fillColor: Colors.grey,

        // hintText: "Enter email",

        // //make hint text
        // hintStyle: TextStyle(
        //   color: Colors.grey,
        //   fontSize: 16,
        //   fontFamily: "verdana_regular",
        //   fontWeight: FontWeight.w400,
        // ),

        //create lable
        labelText: hintText,
        //lable style
        labelStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16,
          // fontFamily: "verdana_regular",
          // fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
