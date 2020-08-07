import 'package:flutter/material.dart';
import 'package:latihan_hero_dan_cliprect/SecondPage.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Latihan Card Hero",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondPage();
          }));
        },
        child: Hero(
          tag: 'pp',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: 100,
              height: 100,
              child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://inikpop.com/wp-content/uploads/2020/08/KMS00097.jpg")),
            ),
          ),
        ),
      ),
    );
  }
}
