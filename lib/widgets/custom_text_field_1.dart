import 'package:flutter/material.dart';

class CustomTextField1 extends StatelessWidget {
  final String title;
  const CustomTextField1({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      labelText: title,
      labelStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: 'Poppins'),
      enabledBorder: myinputborder(),
      focusedBorder: myfocusborder(),
    ));
  }

  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return const OutlineInputBorder(
        //Outline border type for TextFeild
        borderRadius: BorderRadius.all(Radius.circular(30)),
        borderSide: BorderSide(
          color: Colors.grey,
          width: 1,
        ));
  }

  OutlineInputBorder myfocusborder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Color.fromARGB(
            247,
            110,
            196,
            153,
          ),
          width: 2,
        ));
  }
}
