import 'package:flutter/material.dart';

class VideoDetailPage extends StatelessWidget {
  onPressed() {}
  static const boxHeight = 440.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
          title: const Text(
            'Melon Groove',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          actions: <Widget>[
            SizedBox(
              child: TextButton(
                  onPressed: onPressed(),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
            ),
            TextButton(
                onPressed: onPressed(),
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )),
          ],
        ),
        body: Column(
          children: <Widget>[
            Image.network(
              'https://i.ytimg.com/vi/y0Blq-W0MZM/maxresdefault.jpg',
            ),
            Container(
              height: boxHeight,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12, bottom: 6),
                        child: Row(
                          children: <Widget>[
                            Text(
                              '#citypop',
                              style: TextStyle(
                                color: Colors.indigo,
                                fontSize: 18,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                '#BGM',
                                style: TextStyle(
                                  color: Colors.indigo,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      'Japanese City Pop Mixtape Vol.20 - Summer Night［70-80s］',
                      style: TextStyle(
                        fontSize: 26,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                        '23万回視聴・5ヶ月前',
                        style: TextStyle(),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: TextButton(
                                  onPressed: onPressed(),
                                  child: Icon(
                                    Icons.thumb_up_off_alt,
                                    color: Colors.black,
                                    size: 28,
                                  ),
                                ),
                              ),
                              Text(
                                '1995',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: TextButton(
                                  onPressed: onPressed(),
                                  child: Icon(
                                    Icons.thumb_down_off_alt,
                                    color: Colors.black,
                                    size: 28,
                                  ),
                                ),
                              ),
                              Text(
                                '57',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: TextButton(
                                  onPressed: onPressed(),
                                  child: Icon(
                                    Icons.reply,
                                    color: Colors.black,
                                    size: 28,
                                  ),
                                ),
                              ),
                              Text(
                                '共有',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: TextButton(
                                  onPressed: onPressed(),
                                  child: Icon(
                                    Icons.library_add,
                                    color: Colors.black,
                                    size: 28,
                                  ),
                                ),
                              ),
                              Text(
                                '保存',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: TextButton(
                                  onPressed: onPressed(),
                                  child: Icon(
                                    Icons.outlined_flag,
                                    color: Colors.black,
                                    size: 28,
                                  ),
                                ),
                              ),
                              Text(
                                '報告',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 40,
                      thickness: 1,
                      color: Colors.grey[400],
                      // indent: 16,
                      // endIndent: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Image.network(
                          'https://hiyokoyarou.com/wp-content/uploads/2014/08/catsn.png',
                          width: 40,
                          height: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Melon Groove',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'チャンネル登録者数 6480人',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'チャンネル登録',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.red[800],
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 40,
                      thickness: 1,
                      color: Colors.grey[400],
                      // indent: 16,
                      // endIndent: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: double.infinity,
                        child: Text(
                          'コメント数・68',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      height: 40,
                      thickness: 1,
                      color: Colors.grey[400],
                      // indent: 16,
                      // endIndent: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 14),
                      child: Container(
                        width: double.infinity,
                        child: Text(
                          '次の動画',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Image.network(
                          'https://i.ytimg.com/vi/y0Blq-W0MZM/maxresdefault.jpg',
                        ),
                        Container(
                          // width: double.infinity,
                          // height:60,
                          padding: const EdgeInsets.only(top: 20),
                          // child: Padding(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.network(
                                'https://hiyokoyarou.com/wp-content/uploads/2014/08/catsn.png',
                                  width: 50,
                                  height: 50,
                                ),

                                  Expanded(
                                    child: Text(
                                      'Tokyo Night Pop / Japanese Neo City Pop',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                 Icon(Icons.more_vert,
                                     size: 24),

                              ],
                            ),
                          ),


                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
