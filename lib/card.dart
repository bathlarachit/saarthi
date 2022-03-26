import 'package:flutter/material.dart';

class CardItems extends StatelessWidget {
  final txt;
  const CardItems({Key key, this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/read');
        },
        child: Container(
          height: 120,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image(
              width: 100,
              height: 100,
              fit: BoxFit.cover,
              image: AssetImage(txt),
            ),
          ),
          width: 178,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }
}
