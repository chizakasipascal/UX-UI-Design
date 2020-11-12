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
          size: 15,
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SizedBox(
              height: 40.0,
              width: 40.0,
              child: CircleAvatar(
                backgroundColor: WhiteColor.withOpacity(.1),
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Icon(
                      Icons.notifications_none,
                      color: WhiteColor.withOpacity(.5),
                    ),
                    Positioned(
                      right: 3,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Mauvais,
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Text(
            "Hi Pascal",
            style: TextStyle(
                fontWeight: FontWeight.w900, fontSize: 24.0, color: WhiteColor),
          )
        ],
      ),
    );
  }
}
