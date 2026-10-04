import 'package:flutter/material.dart';

final profile = <String, Object>{'nickname': '무비러버', 'week': 0};

String displayName(String? nickname) {
  return nickname?.trim().isNotEmpty == true ? nickname! : '이름 없음';
}

void main() {
  runApp(const MovieLogApp());
}

class MovieLogApp extends StatelessWidget {
  const MovieLogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie Log',
      theme: ThemeData(useMaterial3: true), //여기까지 ~ 앱 전체 설정
      home: const StartScreen(),
    );
  }
}

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 32),
                child: Text('Flutter 1주차'),
              ),
              const SizedBox(height: 24),
              const Icon(
                Icons.movie_outlined,
                size: 72,
                color: Colors.deepPurple,
              ),
              const SizedBox(height: 72, width: 161),
              const Text(
                '영화의 순간을\n 기록하세요',
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20, width: 209),
              const Text(
                '보고 싶은 영화부터 나만의 평점까지\n한곳에서 관리해요',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        // body와 같은 층
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ElevatedButton(
            onPressed: () {
              debugPrint('시작하기 버튼을 눌렀습니다.');
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 48),
              backgroundColor: Colors.deepPurple,
            ),
            child: const Text('시작하기', style: TextStyle(color: Colors.white)),
          ), // ElevatedButton 닫기
        ), // Padding 닫기
      ), // SafeArea 닫기
    );
  }
}
