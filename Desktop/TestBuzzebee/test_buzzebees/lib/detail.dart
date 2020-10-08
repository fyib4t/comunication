import 'dart:ui';

import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final dynamic list;
  Detail(this.list);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: new NetworkImage(
                          list['image_url'],
                        )))),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('SPECIAL DEALS'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    list['name'],
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey.shade300,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    list['price'],
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow[600]),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Detail',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Expanded(
                        child: Column(
                          children: [
                            Text(
                              list['description'],
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ))
          ])),
    );
  }
}
