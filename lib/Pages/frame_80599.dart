import 'package:flutter/material.dart';
import 'package:zeropay/widgets/custom_button.dart';
import 'package:zeropay/widgets/custom_text_field_1.dart';
import 'package:zeropay/widgets/top_bottom_bar_widget.dart';

import '../widgets/calendar.dart';

class Frame80599 extends StatelessWidget {
  const Frame80599({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomBar(
      key: key,
      title: '',
      body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'Create an Event',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins'),
                ),
                Text(
                  'Pick Your Event Date',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),
                ),
                Calendar(),
                Text(
                  "What's happening on ",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),
                ),
                Text(
                  "7TH June ? ",
                  style: TextStyle(
                      color: Color.fromARGB(
                        247,
                        110,
                        196,
                        153,
                      ),
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins'),
                ),
                CustomTextField1(title: 'Title'),
                SizedBox(
                  height: 18,
                ),
                CustomTextField1(title: 'Amount'),
                SizedBox(
                  height: 18,
                ),
                CustomTextField1(title: 'What is for?'),
                SizedBox(
                  height: 18,
                ),
                CustomTextField1(title: 'Repeat'),
                SizedBox(
                  height: 18,
                ),
                CustomButton(title: 'SUBMIT', height: 55, width: 156),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          padding: const EdgeInsets.fromLTRB(35, 20, 35, 10)),
    );
  }
}
