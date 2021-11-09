import 'package:flutter/material.dart';
import 'package:responsiveweb/screens/components/header.dart';
import 'package:responsiveweb/screens/components/side_menu.dart';
import 'components/footer.dart';
import 'components/home_body.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 300),
        child: SideMenu(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: size.width,
            constraints: BoxConstraints(
              minHeight: size.height,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Header(),
                HomeBody(),
                Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
