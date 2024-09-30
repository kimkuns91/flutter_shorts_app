import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:whitemouse_play/widgets/bottom_nav_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const BottomNavBar(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Column의 내용을 중앙에 정렬합니다.
        children: <Widget>[
          Lottie.asset(
            "assets/splash.json", // Lottie 애니메이션 파일
            height: 250, // Lottie 위젯의 높이를 설정 (필요에 따라 조절 가능)
            fit: BoxFit.contain, // 애니메이션의 비율을 유지하며 채웁니다.
          ),
          const SizedBox(height: 20), // Lottie와 텍스트 사이의 간격 조정
          const Text(
            "WhiteMousePlay", // 여기에 원하는 텍스트를 입력하세요.
            style: TextStyle(
                fontSize: 30, // 글자 크기
                color: Colors.white, // 글자 색상
                fontWeight: FontWeight.bold // 글자 두께
                ),
          ),
        ],
      ),
    ));
  }
}
