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
              // width: 30,
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
        body: Container(
          //横方向の真ん中合わせ
            child: Center(
              child: Column(
                //縦方向に並べるカラムを中央に配置
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    //よくわかってない
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                          child:Image.network(
                              'https://hiyokoyarou.com/wp-content/uploads/2014/08/catsn.png'
                          ),
                          width: 300, height:300, ),
                    ],
                  )
                ],
              ),
            ),
        ),
      ),
    );
  }


onPressed() {
}}