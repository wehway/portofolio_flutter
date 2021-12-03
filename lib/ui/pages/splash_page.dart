// ignore: duplicate_ignore
// ignore_for_file: unused_import, duplicate_ignore

import 'dart:async';

import 'package:top_train/ui/pages/get_started_page.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import '../../shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

 @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {
     Navigator.pushNamed(context, '/get-started');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSalmonColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(bottom: 47),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/train.png'))
              ,)
            ),
            Text('TOP TRAIN',
            style: blackTextStyle.copyWith(
              fontSize: 32,
              fontWeight: medium,
              letterSpacing: 10,
            ),)
          ],
        ),
      ),
    );
  }
}