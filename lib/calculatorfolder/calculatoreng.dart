import 'package:flutter/material.dart';
import 'package:test_1/pages/drawer.dart';

class CalculatorEng extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<CalculatorEng> {
  TextEditingController cohomework1 = new TextEditingController();
  TextEditingController cohomework2 = new TextEditingController();
  TextEditingController cohomework3 = new TextEditingController();
  TextEditingController coexame = new TextEditingController();
  var getvalue;
  double vahomework;
  double vaexame;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("الالة الحاسبة", style: TextStyle(fontSize: 17)),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        drawer: MyDrawer(),
        body: ListView(
          children: [
            Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  child: TextField(
                    controller: cohomework1,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "1 علامة الوظيفة ",
                        icon: Icon(
                          Icons.home_work,
                          color: Colors.blue,
                        ),
                        labelStyle: TextStyle(
                          fontSize: 20,
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: TextField(
                    controller: cohomework2,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "2 علامة الوظيفة",
                        icon: Icon(
                          Icons.home_work,
                          color: Colors.blue,
                        ),
                        labelStyle: TextStyle(
                          fontSize: 20,
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: TextField(
                    controller: cohomework3,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "3 علامة الوظيفة",
                        icon: Icon(
                          Icons.home_work,
                          color: Colors.blue,
                        ),
                        labelStyle: TextStyle(
                          fontSize: 20,
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: TextField(
                    controller: coexame,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "علامة الفحص ",
                        icon: Icon(
                          Icons.app_registration,
                          color: Colors.blue,
                        ),
                        labelStyle: TextStyle(
                          fontSize: 20,
                        )),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        onPressed: () {
                          setState(() {
                            getvalue = double.parse(cohomework1.text) * 0.10 +
                                double.parse(cohomework2.text) * 0.10 +
                                double.parse(cohomework3.text) * 0.10 +
                                double.parse(coexame.text) * 0.70;
                          });
                        },
                        child: Text("النتيجة"),
                        color: Colors.blue,
                        textColor: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                    ),
                    Container(
                      child: Text(
                        "%$getvalue",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('calculator');
                        },
                        child: Text("Anycourse",
                            style:
                                TextStyle(fontFamily: 'Cairo', fontSize: 18)),
                        color: Colors.blueGrey[300],
                      ),
                    ),
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
