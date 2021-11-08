import 'package:flutter/material.dart';
import 'package:responsiveweb/constants.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              'All Right Reserved',
              style: TextStyle(fontSize: 10),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                NavItem(
                  title: 'Twitter',
                  tapEvent: () {},
                ),
                NavItem(
                  title: 'Facebook',
                  tapEvent: () {},
                ),
                NavItem(
                  title: 'Linkedin',
                  tapEvent: () {},
                ),
                NavItem(
                  title: 'Instagram',
                  tapEvent: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    Key? key,
    required this.tapEvent,
    required this.title,
  }) : super(key: key);

  final String title;
  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      hoverColor: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
