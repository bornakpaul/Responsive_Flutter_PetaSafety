import 'package:flutter/material.dart';
import 'package:responsiveweb/constants.dart';

import 'menu_items.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              NavItem(
                tapEvent: () {},
                title: 'About Us',
                color: kTextColor,
              ),
              SizedBox(
                height: 10,
              ),
              NavItem(
                tapEvent: () {},
                title: 'Donate',
                color: kTextColor,
              ),
              SizedBox(
                height: 10,
              ),
              NavItem(
                tapEvent: () {},
                title: 'Contact Us',
                color: kTextColor,
              ),
              SizedBox(
                height: 10,
              ),
              NavItem(
                tapEvent: () {},
                title: 'Login',
                color: kTextColor,
              ),
              SizedBox(
                height: 10,
              ),
              NavItem(
                tapEvent: () {},
                title: 'Shop',
                color: kPrimaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
