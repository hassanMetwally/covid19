import 'package:covid19/widgets/header.dart';
import 'package:covid19/widgets/prevent_card.dart';
import 'package:covid19/widgets/symptoms_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Header(
              image: "assets/icons/coronadr.svg",
              topText: 'Get to know',
              bottomText: 'About Covid-19',
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Symptoms',
                    style: kTitleTextStyle,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SymptomsCard(
                        image: 'assets/images/headache.png',
                        title: 'Headache',
                        isActive: true,
                      ),
                      SymptomsCard(
                        image: 'assets/images/caugh.png',
                        title: 'Cough',
                      ),
                      SymptomsCard(
                        image: 'assets/images/fever.png',
                        title: 'Fever',
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Prevention',
                    style: kTitleTextStyle,
                  ),
                  SizedBox(height: 20),
                  PreventCard(
                    image: 'assets/images/wear_mask.png',
                    title: 'Wear face mask',
                    text:
                        "Since the start of the corona virus outbreak some places have fully embraced wearing face masks",
                  ),
                  PreventCard(
                    image: 'assets/images/wash_hands.png',
                    title: 'Wash your hand',
                    text:
                    "Since the start of the corona virus outbreak some places have fully embraced wearing face masks",
                  ),SizedBox(height: 30)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



