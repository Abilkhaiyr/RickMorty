import 'package:flutter/material.dart';
import '../../../../core/theme/recources.dart';

class CharacterFeedback extends StatelessWidget {
  const CharacterFeedback({
    required this.title,
    required this.message,
    required this.actionLabel,
    required this.onAction,
    this.isError = false,
    super.key,
  });
  final String title;
  final String message;
  final String actionLabel;
  final VoidCallback onAction;
  final bool isError;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.fromLTRB(22, 48, 22, 32),
    child: Column(
      children: [
        ExcludeSemantics(
          child: Text(
            isError ? '⚡' : '☄️',
            style: TextStyle(
              fontSize: 75,
              height: 1.5,
              color: isError ? AppColors.dead : AppColors.explorerAccent,
              fontFamilyFallback: const [
                'Segoe UI Emoji',
                'Noto Color Emoji',
                'Noto Sans Symbols 2',
              ],
            ),
          ),
        ),
        const SizedBox(height: 30),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: isError ? 22 : 24,
            height: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          message,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: AppColors.explorerMuted,
            fontSize: 13,
            height: 1.5,
          ),
        ),
        const SizedBox(height: 36),
        FilledButton(onPressed: onAction, child: Text(actionLabel)),
      ],
    ),
  );
}
