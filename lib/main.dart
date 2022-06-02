import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('clipper'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: LikeButton(
                size: 60,
                animationDuration: Duration(milliseconds: 1000),
                likeCount: 120,
                countPostion: CountPostion.bottom,
                likeBuilder: (isTapped) {
                  return Icon(
                    Icons.shopping_cart,
                    color: isTapped ? Colors.deepPurple : Colors.grey,
                  );
                },
              ),
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
