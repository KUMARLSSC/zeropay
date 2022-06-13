import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String leading;
  final String subtitle;
  final String trailing;
  const CustomListTile(
      {Key? key,
      required this.leading,
      required this.subtitle,
      required this.title,
      required this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(1),
      leading: Image.asset(leading),
      title: Text(
        title,
        style: const TextStyle(
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
      subtitle: Text(
        subtitle,
        style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins'),
      ),
      trailing: Text(
        trailing,
        style: const TextStyle(
            color: Color.fromARGB(255, 99, 98, 98),
            fontSize: 19,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins'),
      ),
    );
  }
}
