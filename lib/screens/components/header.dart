import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

//! Headers

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: [
          Image.asset(
            'assets/logo.png',
            width: 50,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "Peta Safety",
            style: GoogleFonts.reenieBeanie(fontSize: 18),
          ),
          Spacer(),
          NavItem(
            tapEvent: () {},
            title: 'About Us',
            color: kTextColor,
          ),
          NavItem(
            tapEvent: () {},
            title: 'Donate',
            color: kTextColor,
          ),
          NavItem(
            tapEvent: () {},
            title: 'Contact Us',
            color: kTextColor,
          ),
          NavItem(
            tapEvent: () {},
            title: 'Login',
            color: kTextColor,
          ),
          NavItem(
            tapEvent: () {},
            title: 'Shop',
            color: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    Key? key,
    required this.title,
    required this.tapEvent,
    required this.color,
  }) : super(key: key);

  final String title;
  final GestureTapCallback tapEvent;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      hoverColor: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
