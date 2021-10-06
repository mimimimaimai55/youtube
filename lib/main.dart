import 'package:flutter/material.dart';
import 'video_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      title: 'YouTube.app',
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.video_camera_back,
          color:Colors.red,
            size: 36,
          ),
          title: const Text('Melon Groove'),
          actions: <Widget>[
            SizedBox(
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

            child: Column(
              children: <Widget>[
                Container(
                  color:Colors.amber[200],
                  width: double.infinity,
                  height:70,
                  // child: Image.network(
                  //   'https://imatabi.jp/wp-content/uploads/2018/01/pinklake.jpg',
                  ),
                Padding(
                  padding: const EdgeInsets.all(20.0),

                  child: Row(
                    children: <Widget>[

                      SizedBox(
                        // width: 40,
                        // height:40,
                        child: Image.network(
                            'https://hiyokoyarou.com/wp-content/uploads/2014/08/catsn.png',
                            width: 70, height:70,
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          const Text('Melon Groove',
                            style: TextStyle(

                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(onPressed: onPressed(),
                              child: Row(
                                children:<Widget> [
                                  Text(
                                    'チャンネル登録',
                                style: TextStyle(
                                  color: Colors.red[800],
                                  fontSize: 16,
                                ),
                                  ),
                                  Text(
                                    'チャンネル登録者数 6480人',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                                  ),
                                ],
                              )),
                        ],

                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    child: Text('人気のアップロード動画',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: ()async{
                          //TODO:画面遷移する
                          await Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => VideoDetailPage()),
                          );
                        },
                        contentPadding: EdgeInsets.all(8),
                        leading: Image.network(
                          'https://i.ytimg.com/vi/y0Blq-W0MZM/maxresdefault.jpg',
                        ),
                        title: Column(
                          children: [
                            Text('Japanese City Pop Mixtape Vol.20 - Summer Night［70-80s］'),
                            Row(
                              children: <Widget>[
                                Text('23万回視聴・5ヶ月前'),
                              ],
                            ),

                          ],
                        ),
                          //末尾に表示するWidget ↓
                          trailing: Icon(Icons.more_vert),
                      );
                    },
                  ),
                )

              ],
            ),
        ),
      ),
    );
  }


onPressed() {
}}