import 'package:flutter/material.dart';
import 'package:responsiveweb/constants.dart';
import 'package:responsiveweb/screens/components/main_button.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Buy',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        TextSpan(
                          text: ' Cruelty Free',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w800,
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Makeup Products',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    'Online Today!',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Help us in making this world a better place for animals.',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      MainButton(
                        color: kPrimaryColor,
                        title: 'GET STARTED',
                        tapEvent: () {},
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      MainButton(
                        color: kSecondaryColor,
                        title: 'WATCH VIDEO',
                        tapEvent: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Image.asset('assets/main.png'),
          ),
        ],
      ),
    );
  }
}
