import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsiveweb/responsive.dart';

import '../../constants.dart';
import 'menu_items.dart';

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
          if (!isMobile(context))
            Row(
              children: [
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
          if (isMobile(context))
            IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: Icon(Icons.menu),
            ),
        ],
      ),
    );
  }
}
