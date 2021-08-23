import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                  Colors.blue[800],
                  Colors.blue[200],
                ])),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          "images/image_1.png",
                        ),
                        radius: 60.0,
                      ),
                    ),
                  ],
                )),
            ListTile(
                contentPadding:
                    EdgeInsets.only(left: 15, right: 15, bottom: 9, top: 9),
                title: Text(
                  "الصفحة الرئيسية",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                leading: Icon(
                  Icons.home,
                  color: Colors.lightBlue[800],
                  size: 30,
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('home');
                }),
            ListTile(
                contentPadding:
                    EdgeInsets.only(left: 15, right: 15, bottom: 9, top: 9),
                title: Text(
                  " البريد الإلكتروني",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                leading: Icon(
                  Icons.email,
                  color: Colors.lightBlue[800],
                  size: 30,
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('email');
                }),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.only(left: 15, right: 15, bottom: 9, top: 9),
              title: Text(
                " الآلة الحاسبة",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Icon(
                Icons.calculate,
                color: Colors.lightBlue[800],
                size: 30,
              ),
              onTap: () {
                Navigator.of(context).pushNamed('calculator');
              },
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed('qustions');
              },
              contentPadding:
                  EdgeInsets.only(left: 15, right: 15, bottom: 9, top: 9),
              title: Text(
                "الاسئلة الشائعة",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Icon(
                Icons.question_answer,
                color: Colors.lightBlue[800],
                size: 30,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed('links');
              },
              contentPadding:
                  EdgeInsets.only(left: 15, right: 15, bottom: 9, top: 9),
              title: Text(
                "روابط مهمة",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Icon(
                Icons.link,
                color: Colors.lightBlue[800],
                size: 30,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed('notespage');
              },
              contentPadding:
                  EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 10),
              title: Text(
                "المفكرة",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Icon(
                Icons.speaker_notes_rounded,
                color: Colors.lightBlue[800],
                size: 30,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed('info');
              },
              contentPadding:
                  EdgeInsets.only(left: 15, right: 15, bottom: 9, top: 9),
              title: Text(
                "حول التطبيق ",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Icon(
                Icons.info,
                color: Colors.lightBlue[800],
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
