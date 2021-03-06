import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // Add this line

///
/// Custom title-card in the context of the statistics-screen
///
class TitleCardStatistics extends StatelessWidget {
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
                AppLocalizations.of(context).staticsScreen_title,
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
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Image.asset("assets/images/board.png"),
                Image.asset("assets/images/person.png")
              ]),
            ],
          ),
        ),
      ),
    ]);
  }
}
