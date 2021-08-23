import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class MyEmail extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<MyEmail> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
          appBar: AppBar(
            title: Text("البريد الإالكتروني", style: TextStyle(fontSize: 17)),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('drawer');
                  },
                  icon: Icon(
                    Icons.list_sharp,
                    color: Colors.white,
                  ))
            ],
          ),
          body: SafeArea(
                      child: Container(
                child: WebviewScaffold(
                    url: "https://mail.svuonline.org/",
                    withZoom: true,
                    withJavascript: true,
                    withLocalStorage: true,
                    hidden: true,
                    clearCache:false,
                    clearCookies:false,
                    initialChild: Container(
                      color: Colors.white10,
                      child: const Center(
                        child: Text('Waiting.....'),
                      ),
                    ))),
          )),
    );
  }
}
