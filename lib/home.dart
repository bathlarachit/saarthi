import 'package:flutter/material.dart';
import 'package:saarthi/DrawerWid.dart';

import 'contants.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: whiteCol,
      drawer: DrawerWid(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteCol,
        iconTheme: IconThemeData(color: colour),
        // leading: ,
        // /*Icon(
        //   Icons.list_outlined,
        //   color: colour,
        // ),*/
        title: Text(
          'Saarthi',
          style: TextStyle(
              color: colour, fontSize: 26, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
      ),
    ));
  }
}
