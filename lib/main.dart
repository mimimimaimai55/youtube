import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.video_camera_back),
          title: const Text('Melon Groove'),
          actions: <Widget>[
            SizedBox(
              width: 30,
              child: TextButton(
                  onPressed: onPressed(),
                  child: Icon(
                    Icons.search,
                  )),
            ),
            TextButton(onPressed: onPressed(),
                child: Icon(
                    Icons.more_vert,
                )),
          ],
        ),
        body: SizedBox(
          width: double.infinity,
          child: Container(
            decoration: BoxDecoration(color: Colors.pink),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                        width:300,child: Image.network('https://cdn.icon-icons.com/icons2/2107/PNG/512/file_type_flutter_icon_130599.png')),
                  ],
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }

  onPressed() {}
}
