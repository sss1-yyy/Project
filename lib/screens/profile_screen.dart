import 'package:flutter/material.dart';
import '../widgets/edit_profile_button.dart';
import '../widgets/favorite_genres.dart';
import '../widgets/movielog_app_bar.dart';
import '../widgets/profile_header.dart';
import '../widgets/stat_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MovieLogAppBar(title: '내 프로필'),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileHeader(),
              const SizedBox(height: 24),
              const Row(
                children: [
                  Expanded(child: StatItem(label: '관람 영화', value: '342')),
                  SizedBox(width: 12),
                  Expanded(child: StatItem(label: '평점', value: '4.2')),
                  SizedBox(width: 12),
                  Expanded(child: StatItem(label: '즐겨찾기', value: '58')),
                ],
              ),
              const SizedBox(height: 24),
              const FavoriteGenres(genres: ['드라마', 'SF', '애니메이션']),
              const SizedBox(height: 32),
              const EditProfileButton(),
            ],
          ),
        ),
      ),
    );
  }
}
