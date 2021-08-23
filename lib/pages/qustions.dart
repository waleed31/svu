import 'package:flutter/material.dart';
import 'package:test_1/pages/drawer.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class Qustions extends StatelessWidget {
  var qustionslist = [
    {
      'qustion': 'اسئلة عن التسجيل',
      'anser': 'https://svuonline.org/ar/node/29'
    },
    {'qustion': 'الدعم التقني', 'anser': 'https://svuonline.org/ar/node/110'},
    {
      'qustion': 'الامتحانات',
      'anser': 'https://svuonline.org/ar/node/108',
    },
    {
      'qustion': 'الدفع الاكتروني',
      'anser': 'https://svuonline.org/ar/node/539',
    },
    {
      'qustion': 'عدد الساعات المطلوبة للترفع من سنة الى سنة',
      'anser': 'https://svuonline.org/ar/node/150'
    },
    {
      'qustion': 'التواصل مع مديرية شؤون الطلاب',
      'anser': 'https://svuonline.org/ar/node/58',
    },
    {
      'qustion': 'اَلية الحصول على مصدقة التخرج',
      'anser': 'https://svuonline.org/ar/node/119',
    },
    {
      'qustion': 'TIC المعهدالتقاني للحاسوب',
      'anser': 'https://svuonline.org/ar/node/134',
    },
    {
      'qustion': 'PMTM ماجستير تأهيل وتخصص في إدارة التقانة ',
      'anser': 'https://svuonline.org/ar/node/133',
    },
    {
      'qustion': 'ISE الإجازة في الهندسة المعلوماتية',
      'anser': 'https://svuonline.org/ar/node/128',
    },
    {
      'qustion': 'BMC الإجازة في الإعلام و الاتصال ',
      'anser': 'https://svuonline.org/ar/node/127',
    },
    {
      'qustion': 'BACT برنامج الإجازة في تقانة الاتصالات',
      'anser': 'https://svuonline.org/ar/node/126',
    },
    {
      'qustion': 'BAIT برنامج الإجازة في تقانة المعلومات',
      'anser': 'https://svuonline.org/ar/node/125',
    },
    {
      'qustion': 'BL البكالوريوس في الحقوق',
      'anser': 'https://svuonline.org/ar/node/55',
    },
    {
      'qustion': 'BsCE برنامج الاقتصاد',
      'anser': 'https://svuonline.org/ar/node/53',
    },
    {
      'qustion': 'EDU برنامج دبلوم التأهيل التربوي ',
      'anser': 'https://svuonline.org/ar/node/54',
    },
    {
      'qustion': 'ENG برنامج الانكليزي',
      'anser': 'https://svuonline.org/ar/node/56',
    },
    {
      'qustion': 'PMTM ماجستير تأهيل وتخصص في إدارة التقانة ',
      'anser': 'https://svuonline.org/ar/node/133',
    },
    {
      'qustion': 'MIQ ماجستير تاهيل وتخصص في الجودة',
      'anser': 'https://svuonline.org/ar/node/132',
    },
    {
      'qustion': 'MWS ماجستير الدراست العليا في علوم الوب',
      'anser': 'https://svuonline.org/ar/node/131',
    },
    {
      'qustion': 'MWT ماجستير تاهيل وتخصص في تقانة الوب ',
      'anser': 'https://svuonline.org/ar/node/130',
    },
    {
      'qustion': 'MBA ماجستير تاهيل وتخصص لإدارة الأعمال ',
      'anser': 'https://svuonline.org/ar/node/129',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                "الاسئلة الشائعة",
                style: TextStyle(fontSize: 17),
              ),
              centerTitle: true,
            ),
            drawer: MyDrawer(),
            body: ListView.builder(
                itemCount: qustionslist.length,
                itemBuilder: (context, i) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15)),
                      color: Colors.blueGrey[50],
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.comment,
                        color: Colors.blue,
                      ),
                      title: Text(
                        qustionslist[i]['qustion'],
                        style: TextStyle(fontSize: 13, fontFamily: 'Cairo'),
                      ),
                      onTap: () async {
                        await launch(qustionslist[i]['anser']);
                      },
                    ),
                  );
                })));
  }
}
