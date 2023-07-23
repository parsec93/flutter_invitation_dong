import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'dart:ui' as ui;

class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  final API_KEY = ""; // API KEY를 넣어주세요

  Widget getMap() {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory('iframe', (int viewId) {
      var iframe = html.IFrameElement();
      iframe.src = 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3261.142560415557!2d129.0757805!3d35.177999199999995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35689354a2ad7b81%3A0x8dccda5788b92fb1!2zV-ybqOuUqe2ZgA!5e0!3m2!1sko!2skr!4v1690084944736!5m2!1sko!2skr'; // embedded google map url
      return iframe;
    });


    return HtmlElementView(viewType: 'iframe');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsetsDirectional.all(20.0),
        child: Column(
          children: [
            Text('오시는 길',
                style: TextStyle(
                    color: const Color.fromRGBO(41, 82, 56, 100),
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            SizedBox(height: 50),
            Container(
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.height * 0.5,
              child: getMap(),
            ),
            SizedBox(height: 20),
            Text('부산 연제구 중앙대로 1125 시티타워, \nW웨딩 목화웨딩컨벤션 \n15층 무궁화홀',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          ],
        ));
  }
}