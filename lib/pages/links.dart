import 'package:flutter/material.dart';
import 'package:test_1/pages/drawer.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class Links extends StatelessWidget {
  var qustionslist = [
    {
      'describe': 'غروب لطلاب الجامعة الافتراضية السورية ',
      'link': 'https://www.facebook.com/groups/SVU4ALLSYR/'
    },
    {
      'describe': 'غروب اللغة الانكليزية للجامعة الافتراضية',
      'link': 'https://www.facebook.com/groups/359581758490903'
    },
    {
      'describe': 'نماذج_لفحص _تحديد_المستوى',
      'link':
          'https://drive.google.com/file/d/1xUNmsy7QobG_wab2t2wGfQf8neWV6aTo/view?usp=drivesdk&fbclid=IwAR2oNIb87J_EniTNZW2pMQAMIVsU2VP2rtlAA6TOK1g4qc264XXv-hZz4zs'
    },
    {
      'describe': 'نماذج_لاختبار_فحص_القبول_bait',
      'link':
          'https://drive.google.com/file/d/1Hkg5iBf2zxsbOo3HNVjPDpxDDXpu263t/view?usp=drivesdk&fbclid=IwAR33ii_s8S8miW62y0VhIo_t5oIhCb7H925oHRY9KfDoS6Wj8UUBjnjqkiI'
    },
    {
      'describe':
          'نموذج و قواعد انكليزي  لاختبار للقبول بفحص الماستر و فحص تحديد المستوى',
      'link':
          'https://drive.google.com/file/d/1UKiKE123Ek3z9M1DtuXfBhvpHpv3TlU_/view?usp=drivesdk&fbclid=IwAR030h-yQDF6D9BMZWWJN3XeBy8fUyicofX32WqH_Kp4J-ylj_xakFpjCLI'
    },
    {
      'describe': 'وظائف قديمة وملخصات لاختصاص BAIT',
      'link':
          'https://drive.google.com/drive/folders/1GAanDQxGNuHcVco4D3mrEQSVT4y22P_H?fbclid=IwAR2HuIa4vU6Qh-fGCp6QulKU6QI8cVk863tScl4LZRoLDigsB4jma8l82RY'
    },
    {
      'describe': 'افضل الدكاترة للمواد اختصاص BAIT +بعض النصائح',
      'link':
          'https://www.facebook.com/groups/svuoffline.org/permalink/3920162731385587/?__cft__[0]=AZVZmVF_2l2kBGWTumkIGu8vDcAvjrAFtgFIO5E9RW9j8fIbswjbyjfLsrkPz28yIm7XY0X8kB9Vv_OeJ_e-pooWGTRVxuwxB4AC68Vbm3uRPFtkKH_EhJAciooSn1Zv3O4XjJ3p02fHLSaYzEmd-eytoSiHoL5y9znphgyIsU1VjSWGyIic5KBulqUH0o1Xz18&__tn__=R]-R'
    },
    {
      'describe': 'الية التسجيل على المفاضلة مع الشرح المفصل',
      'link':
          'https://www.facebook.com/groups/SVU4ALLSYR/permalink/3621959961158058/?__cft__[0]=AZWw-WvZjdjDdQ4Wz8MuxzZgcsV8Zfo_h63rJJ-lU9103oURBI2du2Fm5cdsp0mPNXg5fiWcsq63X5y3lqi8WPbJOuts5S9zAleAl0NsVxV5zRbHarUna2UYEDAF0sR_aRdIpbUMuCBELFjjXBTHy6Qm&__tn__=%2CO%2CP-R'
    },
    {
      'describe':
          'اذا لم يعمل الرابط في الاعلى (رابط اخر لتحميل ملف الية التسجيل على المفاضلة) ',
      'link': 'https://www.file-upload.com/bsokbn4o3wp2'
    },
    {
      'describe': 'منشور مهم للمستجدين للجواب على اغلب الاسئلة',
      'link':
          'https://www.facebook.com/groups/SVU4ALLSYR/permalink/3985926911428026/'
    },
    {
      'describe': 'بوست شامل للاجابة عن كافة الاسئلة المتعلقة بالجامعة ',
      'link':
          'https://www.facebook.com/groups/SVU4ALLSYR/permalink/3522831844404204/?__cft__[0]=AZXhvYjf3-nToABsabQQucItj_LipK8TTUCTOjFk84900jW2uxXsDQehfccXRMSB378OgcHE3OpvRMXbFHj9-jg_mQvixTHC8xur2l8JPv-5t1LLbnUfKSmPrn2WXjz67Z8&__tn__=%2CO%2CP-R'
    },
    {
      'describe':
          'الباقة التعليمية الشهرية الخاصة بمخدمات الجامعة الافتراضية السورية من شركتي Syriatel  و MTN',
      'link':
          'https://www.facebook.com/groups/SVU4ALLSYR/permalink/3976500962370621/'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                "بعض الروابط المهمة",
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
                        Icons.link,
                        color: Colors.blue,
                      ),
                      title: Text(
                        qustionslist[i]['describe'],
                        style: TextStyle(fontSize: 13, fontFamily: 'Cairo'),
                      ),
                      onTap: () async {
                        await launch(qustionslist[i]['link']);
                      },
                    ),
                  );
                })));
  }
}
