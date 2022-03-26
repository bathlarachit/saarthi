import 'package:flutter/material.dart';

import 'contants.dart';

class ReadPage extends StatelessWidget {
//  const ReadPage({Key? key}) : super(key: key);
//  ReadPage({ this.title, this.img, this.content});
//  final title,img,content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: colour,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
          /*


        */
          ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: 'pic',
                child: Container(
                  height: 200,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/car.png'),
                      )),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: double.infinity,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(height: 15),
              Text(
                "Place",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              Text(
                "Content here",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }
}
