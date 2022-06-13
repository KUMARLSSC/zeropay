import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  final Widget? body;
  final String? title;
  const BottomBar({Key? key, this.body, this.title}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
// index given for tabs

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              widget.title!,
              style: const TextStyle(
                  color: Color.fromARGB(
                    247,
                    110,
                    196,
                    153,
                  ),
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        leadingWidth: 100,
        toolbarHeight: 70,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5, top: 25),
          child: Card(
            elevation: 6,
            shadowColor: const Color.fromARGB(237, 0, 0, 0),
            shape: const CircleBorder(),
            child: Image.asset('assets/img/Back ICon.png'),
          ),
        ),
      ),
      body: widget.body,

      // floating action button in center
      floatingActionButton: FloatingActionButton(
        elevation: 4,
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Image.asset('assets/img/Group 80991.png'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // bottom app bar
      bottomNavigationBar: Container(
        height: 55,
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Color.fromARGB(58, 0, 0, 0),
                blurRadius: 15.0,
                offset: Offset(0.0, 0.75))
          ],
        ),
        child: BottomAppBar(
          color: Colors.white,
          shape: const AutomaticNotchedShape(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
          ),
          child: Container(
            height: 80,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/img/Group.png'),
                Image.asset('assets/img/Group 80957.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
