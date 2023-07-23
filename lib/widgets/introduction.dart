import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Introduction extends StatelessWidget {
  final _googleFormUrl = 'https://forms.gle/SEmgPUx1y4qyJEFj9';

  void _launchURL() async => await canLaunch(_googleFormUrl)
      ? await launch(_googleFormUrl)
      : throw 'Could not launch $_googleFormUrl';

  Widget _buildName(String father, mother, order, name) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(father, style: TextStyle(fontSize: 15)),
            Text(mother, style: TextStyle(fontSize: 15)),
          ],
        ),
        Text('  의 $order  '),
        Text(name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsetsDirectional.all(20.0),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              child: Image.asset(
                'assets/images/hand.png',
                fit: BoxFit.contain,
              ),
            ),
            AutoSizeText('초대합니다',
                style: TextStyle(
                    color: const Color.fromRGBO(41, 82, 56, 100),
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            SizedBox(height: 50),
            AutoSizeText(
              '풋풋한 21살, 03월에 만난 저희는 \n학업, 군대, 졸업, 취준까지 \n7년이란 세월을 함께하며 사랑하고 성장해왔습니다.\n\n' +
                  '이제 저희 두 사람 연인이 아닌 \n가족으로 새로운 출발을 하려합니다. \n귀한 걸음하시어 축복해 주시면 감사하겠습니다 ❤',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 50),
            _buildName('동균(부)', '동균(맘)', '장남', '동균'),
            SizedBox(height: 30),
            _buildName('은영(부)', '은영(맘)', '장녀', '은영'),
            SizedBox(height: 50),
            AutoSizeText('2024년 8월 15일 목요일\n낮 12시 30분',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: const Color.fromRGBO(41, 82, 56, 100),
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            SizedBox(height: 50)
          ],
        ));
  }
}