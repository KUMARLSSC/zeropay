import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  const CustomButton(
      {Key? key,
      required this.title,
      required this.height,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height, //height of button
        width: width, //width of button
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                primary: Colors.white, //background color of button
                side: const BorderSide(
                  width: 2,
                  color: Color.fromARGB(
                    247,
                    110,
                    196,
                    153,
                  ),
                ), //border width and color
                elevation: 5, //elevation of button
                shape: RoundedRectangleBorder(
                    //to set border radius to button
                    borderRadius: BorderRadius.circular(30)),
                padding: const EdgeInsets.all(5) //content padding inside button
                ),
            onPressed: () {
              //code to execute when this button is pressed.
            },
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins'),
            )));
  }
}
