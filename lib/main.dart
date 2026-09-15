import 'package:flutter/material.dart';

// 1. Movie 클래스 작성
class Movie {
  final String title;
  final String? nickname; // nullable 필드 예시로 같이 활용

  const Movie({required this.title, this.nickname});

  // 4. nullable 닉네임을 안전한 기본값으로 변환
  String get displayNickname {
    return nickname?.trim().isNotEmpty == true ? nickname! : '이름 없음';
  }
}

void main() {
  // 2. 영화 3개를 List<Movie>에 넣기
  final movies = <Movie>[
    const Movie(title: '인터스텔라', nickname: '별로'),
    const Movie(title: '기생충'),
    const Movie(title: '라라랜드', nickname: '  '),
  ];

  // 3. for문으로 제목 출력
  for (final movie in movies) {
    debugPrint('for 출력: ${movie.title}');
  }

  // 3. map으로 제목 출력 (둘 중 하나만 써도 되지만 예시로 둘 다)
  movies.map((movie) => movie.title).forEach((title) {
    debugPrint('map 출력: $title');
  });

  // 4. nullable 닉네임 처리 확인
  for (final movie in movies) {
    debugPrint('${movie.title} 닉네임: ${movie.displayNickname}');
  }

  runApp(const MovieLogApp());
}

class MovieLogApp extends StatelessWidget {
  const MovieLogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '영화 기록',
      debugShowCheckedModeBanner: false,
      home: const StartScreen(),
    );
  }
}

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF9F5),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 60),
              SizedBox(
                width: 82,
                height: 16,
                child: Center(
                  child: Text(
                    'flutter 1주차'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: 'Noto Sans KR',
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                      height: 16 / 11,
                      letterSpacing: 0.55,
                      color: Color(0xFF494551),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: 128,
                height: 160,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: const Center(
                    child: Icon(Icons.movie_outlined, size: 80, color: Color(0xFF4F378A)),
                  ),
                ),
              ),
              const Text(
                '영화의 순간을\n기록하세요',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Noto Sans KR',
                  fontWeight: FontWeight.w500,
                  fontSize: 28,
                  height: 36 / 28,
                  letterSpacing: 0,
                  color: Color(0xFF1B1C1A),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                '보고 싶은 영화부터 나만의 평점까지\n 한곳에서 관리해요',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Noto Sans KR',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  height: 20 / 14,
                  letterSpacing: 0.25,
                  color: Color(0xFF494551),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 326,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4F378A),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 8,
                    ),
                    elevation: 1,
                    shadowColor: const Color(0x0D000000),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text('시작하기'),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}