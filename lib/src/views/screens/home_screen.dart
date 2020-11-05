import 'package:flutter/material.dart';
import 'package:ux_ui_design/src/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          size: 10,
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: WhiteColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: CalendarDatePicker(
                    firstDate: DateTime.now(),
                    initialDate: DateTime.now(),
                    lastDate: DateTime.now(),
                    onDateChanged: (DateTime value) {},
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Ongoing",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: WhiteColor),
                ),
                SizedBox(height: 20),
                OnpoindWidget(size: size),
                OnpoindWidget(size: size),
                OnpoindWidget(size: size),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OnpoindWidget extends StatelessWidget {
  const OnpoindWidget({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2.0, bottom: 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              height: size.height * .15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "8H",
                    style: TextStyle(
                      fontSize: 12,
                      color: WhiteColor.withOpacity(.5),
                    ),
                  ),
                  Text(
                    "9H",
                    style: TextStyle(
                      fontSize: 12,
                      color: WhiteColor.withOpacity(.5),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: size.width * .7,
            decoration: BoxDecoration(
              color: WhiteColor.withOpacity(.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ladding pages desig",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: WhiteColor),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "8:00 AM - 9H:00 AM",
                    style: TextStyle(
                      fontSize: 12,
                      color: WhiteColor.withOpacity(.5),
                    ),
                  ),
                  SizedBox(height: 10),
                  Stack(
                    overflow: Overflow.visible,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.red,
                      ),
                      Positioned(
                        left: 20,
                        child: CircleAvatar(
                          backgroundColor: Colors.yellow,
                        ),
                      ),
                      Positioned(
                        left: 40,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
