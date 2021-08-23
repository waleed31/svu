import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:test_1/pages/drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text("حول التطبيق"),
            centerTitle: true,
          ),
          drawer: MyDrawer(),
          body: ListView(
            children: [
              Container(
                  padding: EdgeInsetsDirectional.only(
                      bottom: 20, top: 50, end: 10, start: 10),
                  child: builText1()),
              Container(
                  padding: EdgeInsetsDirectional.only(
                    start: 10,
                    top: 50,
                  ),
                  child: builText4()),
              Container(
                  padding: EdgeInsetsDirectional.only(
                    start: 10,
                    top: 50,
                  ),
                  child: builText2()),
              Container(
                  padding: EdgeInsetsDirectional.only(
                    start: 110,
                    top: 10,
                  ),
                  child: builText3()),
            ],
          ),
        ));
  }
}

Widget builText1() => Text.rich(TextSpan(
    text:
        "هذا التطبيق هو ليس التطبيق الرسمي والجامعة الافتراضية السورية ليست مسؤولة عنه هو مجرد تطبيق صغير قمت بأنشائه من اجل الفائدة فقط  ",
    style: TextStyle(color: Colors.black, fontSize: 18, fontFamily: 'Cairo')));

Widget builText2() => Text.rich(TextSpan(
    text: "لتواصل مع مطور التطبيق :     ",
    style: TextStyle(
        color: Colors.blue[900], fontSize: (20), fontFamily: 'Cairo')));

Widget builText3() => Text.rich(TextSpan(
        text: "contact me via :  ",
        style: TextStyle(
          color: Colors.blue[900],
          fontSize: (20),
        ),
        children: [
          WidgetSpan(
              child: Icon(
            Icons.email,
            color: Colors.blue,
          )),
          TextSpan(
            text: ' Email',
            style: TextStyle(color: Colors.blue, fontFamily: 'Cairo'),
            recognizer: TapGestureRecognizer()..onTap = launchEmail,
          )
        ]));

Widget builText4() => Text.rich(TextSpan(
    text:
        "التطبيق بسيط جداً بسبب الوقت والامكانيات اذا كنت طالب بالجامعة وتريد تحسين الكود وتضيف بعض الميزات تواصل معي  ",
    style: TextStyle(fontSize: (18), fontFamily: 'Cairo')));

Future launchEmail() async {
  await launch(
      'mailto:waleedtb775@gmail.com?subject=test%20subject&body=test%20body');
}
