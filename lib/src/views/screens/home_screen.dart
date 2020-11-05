import 'package:flutter/material.dart';
import 'package:ux_ui_design/src/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
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
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("8H"),
                        Text("9H"),
                      ],
                    ),
                    Container(
                      width: size.width * .7,
                      decoration: BoxDecoration(
                        color: Mauvais,
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
                                  fontWeight: FontWeight.bold,
                                  color: WhiteColor),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "9:00am - me",
                              style: TextStyle(
                                fontSize: 12,
                                color: WhiteColor.withOpacity(.5),
                              ),
                            ),
                            SizedBox(height: 10),
                            Stack(
                              children: [
                                CircleAvatar(
                                  child: Placeholder(),
                                ),
                                Positioned(
                                  left: 20,
                                  child: CircleAvatar(
                                    child: Placeholder(),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
