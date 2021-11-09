import 'package:flutter/material.dart';
import 'package:responsiveweb/constants.dart';
import 'package:responsiveweb/responsive.dart';
import 'package:responsiveweb/screens/components/main_button.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: !isMobile(context) ? 40 : 0),
              child: Column(
                mainAxisAlignment: !isMobile(context)
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.center,
                crossAxisAlignment: !isMobile(context)
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                children: [
                  if (isMobile(context))
                    Image.asset(
                      'assets/main.png',
                      height: size.height * 0.3,
                    ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Buy',
                          style: TextStyle(
                            fontSize: isDesktop(context) ? 54 : 32,
                            fontWeight: FontWeight.w800,
                            color: kTextColor,
                          ),
                        ),
                        TextSpan(
                          text: ' Cruelty Free',
                          style: TextStyle(
                            fontSize: isDesktop(context) ? 54 : 32,
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
                      fontSize: isDesktop(context) ? 54 : 32,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    'Online Today!',
                    style: TextStyle(
                      fontSize: isDesktop(context) ? 54 : 32,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Help us in making this world a better place for animals.',
                    textAlign:
                        isMobile(context) ? TextAlign.center : TextAlign.start,
                    style: TextStyle(
                      fontSize: isDesktop(context) ? 30 : 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    runSpacing: 10,
                    children: [
                      MainButton(
                        color: kPrimaryColor,
                        title: ' GET  STARTED',
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
          if (isDesktop(context) || isTab(context))
            Expanded(
              child: Image.asset(
                'assets/main.png',
                height: size.height * 0.7,
              ),
            ),
        ],
      ),
    );
  }
}
