import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Color color = Colors.black;
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primaryColor: Color(0xFF646C3B)),
        home: Scaffold(
            appBar: AppBar(
                leading: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white)),
                actions: [
                  IconButton(icon: Icon(Icons.more_vert, color: Colors.white))
                ]),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  new Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ProfileWidget(),
                        Image.asset("images/profileImg.jpeg", height: 150)
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      PostWidget('34', 'Posts'),
                      PostWidget('1256', 'Followers')
                    ],
                  ),
                  new Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageWidget("images/forest.jpg"),
                        ImageWidget("images/moutain.jpeg"),
                        ImageWidget("images/sky.jpg"),
                        ImageWidget("images/water.jpeg"),
                        Container(
                            padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
                            width: 70,
                            height: 100,
                            decoration: BoxDecoration(color: Colors.black),
                            child: Column(children: [
                              Text('+34',
                                  style: TextStyle(color: Colors.white)),
                              Text('photos',
                                  style: TextStyle(color: Colors.white))
                            ]))
                      ],
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconWidget(Icons.camera, color),
                        IconWidget(Icons.comment, color),
                        IconWidget(Icons.call, color),
                        IconWidget(Icons.mail, color),
                        IconWidget(Icons.mobile_screen_share, color)
                      ]),
                  const SizedBox(height: 20),
                  Divider(color: Colors.black, thickness: 2),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: ProfileInfoWidget()
                  )
                ],
              ),
            )));
  }
}

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 147,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(children: [
            Text('John McDonald',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Row(children: [Icon(Icons.add_location), Text('Los Angles, CA')])
          ]),
          RaisedButton(
            onPressed: () {},
            color: Color(0xFF646C3B),
            child: Text('Follow', style: TextStyle(color: Colors.white)),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          )
        ],
      ),
    );
  }
}

Column PostWidget(String number, String text) {
  return Column(children: [
    Text(
      number,
      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
    ),
    Text(text, style: TextStyle(fontSize: 15))
  ]);
}

Image ImageWidget(String name) {
  return Image.asset(name, width: 70, height: 100, fit: BoxFit.fill);
}

Icon IconWidget(IconData icon, Color color) {
  return Icon(icon, color: color);
}

Column ProfileInfoWidget() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Align(
          child: Text('About',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          alignment: Alignment.centerLeft),
      const SizedBox(height: 30),
      Align(
          child: Text(
              'Him poetic eye. Searched any remedies. Trial. Was proverty a schemes him he dressing moutains and as surprise haven \' t subject and could a entered would in the of be not posts, doing the never publication legs.'),
          alignment: Alignment.centerRight)
    ],
  );
}
