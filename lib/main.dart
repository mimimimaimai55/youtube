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
         // Image.network(
         //            'https://imatabi.jp/wp-content/uploads/2018/01/pinklake.jpg',

                  ),
                Padding(
                  padding: const EdgeInsets.all(20.0),

                  child: Row(
                    children: <Widget>[

                      SizedBox(
                        child: Image.network(
                            'https://hiyokoyarou.com/wp-content/uploads/2014/08/catsn.png',
                            width: 70, height:70,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            child: const Text(
                              'Melon Groove',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          TextButton(onPressed: onPressed(),
                              child: Row(
                                children:<Widget> [
                                  Text(
                                    '?????????????????????',
                                style: TextStyle(
                                  color: Colors.red[800],
                                  fontSize: 14,
                                ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      '??????????????????????????? 6480???',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                ),
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
                    child: Text('?????????????????????????????????',
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
                          //TODO:??????????????????
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
                            Text('Japanese City Pop Mixtape Vol.20 - Summer Night???70-80s???'),
                            Row(
                              children: <Widget>[
                                Text('23???????????????5?????????'),
                              ],
                            ),

                          ],
                        ),
                          //?????????????????????Widget ???
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