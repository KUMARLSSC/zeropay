import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'custom_button.dart';

class SemiCircleProgress extends StatefulWidget {
  const SemiCircleProgress({Key? key}) : super(key: key);

  @override
  State<SemiCircleProgress> createState() => _SemiCircleProgressState();
}

class _SemiCircleProgressState extends State<SemiCircleProgress> {
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 130,
      lineWidth: 17,
      animation: true,
      arcType: ArcType.HALF,
      progressColor: const Color.fromARGB(
        255,
        31,
        224,
        125,
      ),
      percent: 0.5,
      arcBackgroundColor: Colors.grey.withOpacity(0.3),
      startAngle: 272,
      circularStrokeCap: CircularStrokeCap.round,
      center: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(
            height: 55,
          ),
          Text(
            '₹ 8000',
            style: TextStyle(
                color: Colors.black,
                fontSize: 36,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins'),
          ),
          Text(
            'left of ₹ 9000 total',
            style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins'),
          ),
          SizedBox(
            height: 43,
          ),
          CustomButton(title: 'UPGRADE LIMIT', height: 40, width: 170),
        ],
      ),
    );
  }
}
