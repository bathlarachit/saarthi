import 'package:flutter/material.dart';
import 'package:saarthi/DrawerWid.dart';
import 'package:saarthi/card.dart';

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
      body: SingleChildScrollView(child: Body()),
    ));
  }
}

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(244, 243, 243, 1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search you'r looking for",
                prefixIcon: Icon(Icons.search),
                hintStyle: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ),
          ),
          CardView()
        ],
      ),
    );
  }
}

class CardView extends StatelessWidget {
  const CardView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Hero(
                tag: 'pic',
                child: CardItems(
                  txt: 'assets/images/rail.jpeg',
                )),
            CardItems(
              txt: 'assets/images/rest.jpeg',
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardItems(
              txt: 'assets/images/edu.jpeg',
            ),
            CardItems(
              txt: 'assets/images/doc.jpeg',
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardItems(
              txt: 'assets/images/food.jpeg',
            ),
            CardItems(
              txt: 'assets/images/hot.jpeg',
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardItems(
              txt: 'assets/images/others.jpeg',
            ),
            CardItems(
              txt: 'assets/images/bus.jpeg',
            ),
          ],
        ),
      ],
    );
  }
}
