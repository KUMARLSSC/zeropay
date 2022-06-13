import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zeropay/Viewmodels/repayment_viewmodel.dart';
import 'package:zeropay/widgets/cutom_list_tile.dart';

import '../widgets/custom_button.dart';
import '../widgets/semi_circle_progess.dart';

class RepaymentPage1 extends StatelessWidget {
  const RepaymentPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RepaymentViewModel>.reactive(
        builder: (context, model, child) => SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(35, 20, 35, 10),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SemiCircleProgress(),
                          const Divider(
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Your next payment is',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      "₹ 900",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                            247,
                                            110,
                                            196,
                                            153,
                                          ),
                                          fontSize: 38,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Poppins'),
                                    ),
                                    Text(
                                      'on april 18th',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 18,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                  height: 100,
                                  child: Center(
                                    child: CustomButton(
                                        title: 'PAY NOW',
                                        height: 37,
                                        width: 120),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: const Color.fromARGB(57, 158, 158, 158),
                    padding: const EdgeInsets.fromLTRB(35, 20, 35, 10),
                    child: ExpansionTile(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'MON',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins'),
                                ),
                                Text(
                                  '18',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins'),
                                ),
                                CustomButton(
                                    title: 'PAYMENT', height: 30, width: 90)
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'TUE',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins'),
                                ),
                                Text(
                                  '21',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins'),
                                ),
                                CustomButton(
                                    title: 'Zara 20%', height: 30, width: 90)
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'MON',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins'),
                                ),
                                Text(
                                  '18',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins'),
                                ),
                                CustomButton(
                                    title: 'PAYMENT', height: 30, width: 90)
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'MON',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins'),
                                ),
                                Text(
                                  '18',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins'),
                                ),
                                CustomButton(
                                    title: 'Netflix', height: 30, width: 90)
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'TUE',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins'),
                                ),
                                Text(
                                  '21',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins'),
                                ),
                                CustomButton(
                                    title: 'Amazon', height: 30, width: 90)
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'MON',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins'),
                                ),
                                Text(
                                  '18',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins'),
                                ),
                                CustomButton(
                                    title: 'Gaana', height: 30, width: 90)
                              ],
                            )
                          ],
                        )
                      ],
                      title: Column(
                        children: [
                          //////////////
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                child: Column(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          const TextSpan(
                                            text: "MARCH ",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Poppins'),
                                          ),
                                          WidgetSpan(
                                            child: Image.asset(
                                              'assets/img/Group 80842.png',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Text('CHANGE VIEW >',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                              247,
                                              110,
                                              196,
                                              153,
                                            ),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Poppins'))
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  model.navigateToFrame80599();
                                },
                                child: const CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Color.fromARGB(
                                    247,
                                    110,
                                    196,
                                    153,
                                  ),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 13,
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.black,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                          //////////////
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(35, 20, 35, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Previous Transactions',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins'),
                        ),
                        Text(
                          'what if I miss a payment?',
                          style: TextStyle(
                              color: Color.fromARGB(
                                247,
                                110,
                                196,
                                153,
                              ),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins'),
                        ),
                        CustomListTile(
                            leading: 'assets/img/Vector.png',
                            subtitle: 'Amazon',
                            title: '12 March 2022',
                            trailing: '₹ 900'),
                        CustomListTile(
                            leading: 'assets/img/Group 80828.png',
                            subtitle: 'NIKE',
                            title: '15 March 2022',
                            trailing: '₹ 800'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        viewModelBuilder: () => RepaymentViewModel());
  }
}
