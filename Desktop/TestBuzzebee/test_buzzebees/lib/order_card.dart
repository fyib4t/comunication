import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test_buzzebees/detail.dart';

class OrderCard extends StatelessWidget {
  final dynamic list;
  final Function press;
  const OrderCard({
    Key key,
    @required this.list,
    this.press,
    this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // print(list);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Detail(list)),
        );
      },
      child: Container(
        height: size.height * 1,
        width: size.width * 0.2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: size.height * 0.15,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: new NetworkImage(
                            list['image_url'],
                          )))),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(list['name']),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  list['price'],
                  style: TextStyle(color: Colors.yellow, fontSize: 16),
                ),
              )
            ]),
      ),
    );
  }
}
