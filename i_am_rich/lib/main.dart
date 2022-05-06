import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.blueGrey
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Hey! I am rich'),
          ),
          body: Center(

            child: Image(
                image: NetworkImage(("https://i0.wp.com/cdn-prod.medicalnewstoday.com/content/images/articles/325/325466/man-walking-dog.jpg?w=1575"),)
            )

          ),
        ),
      )
  );
}

