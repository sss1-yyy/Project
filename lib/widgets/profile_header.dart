import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final colors = Theme.of(context).colorScheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 32,
          backgroundColor: colors.primary.withValues(alpha: 0.15),
          child: Icon(Icons.person, color: colors.primary, size: 32),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('무비러버', style: textTheme.titleMedium),
                  const SizedBox(width: 4),
                  SvgPicture.asset(
                    'assets/icons/verified.svg',
                    width: 16,
                    height: 16,
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                '매주 주말엔 영화관으로 출근하는 프로 관람객,\n좋은 영화를 보고 기록하는 것을 좋아합니다.',
                style: textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }
}