import 'package:flutter/material.dart';

class TitleCardAddNewEntryCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Card(
        color: Color.fromARGB(255, 250, 250, 250),
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
          child: Column(
            children: [
              Text(
                "What is the category\nof Event to add?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.w300,
                  color: Color.fromARGB(255, 86, 86, 86),
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Image.asset("assets/images/kind-of-event.png"),
            ],
          ),
        ),
      ),
    ]);
  }
}
