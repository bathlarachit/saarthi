import 'package:flutter/material.dart';
import 'package:saarthi/contants.dart';

class DrawerWid extends StatelessWidget {
  const DrawerWid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Drawer(
        child: ListView(
          children: [
            header(),
            DrawItem(
              icon: Icons.mail_rounded,
              text: "Contact us",
            )
          ],
        ),
      ),
    );
  }
}

Widget header() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 20,
        ),
        Image(
          image: AssetImage('assets/images/car.png'),
          height: 140,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "One Place to your every Destination",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.grey[700]),
          textAlign: TextAlign.center,
        ),
        Divider(
          color: Colors.grey[400],
        )
      ],
    ),
  );
}

class DrawItem extends StatelessWidget {
  final text, icon;
  const DrawItem({Key key, this.text, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: colour,
      ),
      title: Text(text),
    );
  }
}
