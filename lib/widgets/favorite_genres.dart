import 'package:flutter/material.dart';

class FavoriteGenres extends StatelessWidget {
  const FavoriteGenres({super.key, required this.genres});

  final List<String> genres;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('선호하는 장르', style: textTheme.titleMedium),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            for (final genre in genres)
              Chip(
                label: Text(genre),
                labelStyle: TextStyle(
                  color: colors.primary,
                  fontWeight: FontWeight.w600,
                ),
                backgroundColor: colors.primary.withValues(alpha: 0.1),
                side: BorderSide.none,
                shape: const StadiumBorder(),
                visualDensity: VisualDensity.compact,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              ),
          ],
        ),
      ],
    );
  }
}
