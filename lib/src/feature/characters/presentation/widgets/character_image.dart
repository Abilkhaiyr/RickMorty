import 'package:flutter/material.dart';
import '../../../../core/theme/recources.dart';

class CharacterImage extends StatelessWidget {
  const CharacterImage({
    required this.url,
    this.name = '',
    this.size = 81,
    super.key,
  });
  final String url;
  final String name;
  final double size;
  @override
  Widget build(BuildContext context) => ClipRRect(
    borderRadius: BorderRadius.circular(16),
    child: url.isEmpty
        ? _placeholder()
        : Image.network(
            url,
            width: size,
            height: size,
            fit: BoxFit.cover,
            loadingBuilder: (_, child, progress) =>
                progress == null ? child : _placeholder(),
            errorBuilder: (_, _, _) => _placeholder(),
          ),
  );

  Widget _placeholder() {
    final color = name.startsWith('Rick')
        ? AppColors.avatarTeal
        : name.contains('Morty')
        ? AppColors.avatarPurple
        : name.startsWith('Summer')
        ? AppColors.avatarGold
        : AppColors.avatarBlue;
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      color: color,
      child: Text(
        name.isEmpty ? '?' : name.characters.first.toUpperCase(),
        style: TextStyle(
          fontFamily: 'Inter',
          color: AppColors.explorerAccent,
          fontSize: size * .53,
          height: 1.5,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
