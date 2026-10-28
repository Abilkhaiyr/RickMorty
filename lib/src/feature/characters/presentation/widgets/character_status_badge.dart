import 'package:flutter/material.dart';
import '../../../../core/theme/recources.dart';

class CharacterStatusBadge extends StatelessWidget {
  const CharacterStatusBadge({
    required this.status,
    this.showDot = false,
    super.key,
  });
  final String status;
  final bool showDot;

  @override
  Widget build(BuildContext context) {
    final color = switch (status.toLowerCase()) {
      'alive' => AppColors.alive,
      'dead' => AppColors.dead,
      _ => AppColors.explorerMuted,
    };
    return Container(
      constraints: BoxConstraints(minWidth: showDot ? 80 : 64, minHeight: 27),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.explorerElevated,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Text(
        '${showDot ? '● ' : ''}$status',
        style: TextStyle(
          color: color,
          fontSize: 11,
          height: 1.35,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
