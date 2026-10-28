import 'package:flutter/material.dart';
import '../../../../core/theme/recources.dart';
import '../../../../core/utils/extensions/context_extension.dart';

class PaginationFeedback extends StatelessWidget {
  const PaginationFeedback({
    required this.loading,
    required this.hasError,
    required this.onRetry,
    super.key,
  });
  final bool loading;
  final bool hasError;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    if (hasError) {
      return Container(
        margin: const EdgeInsets.only(top: 14),
        padding: const EdgeInsets.fromLTRB(16, 18, 16, 6),
        decoration: BoxDecoration(
          color: AppColors.explorerSurface,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Text(
              context.localized.paginationErrorTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              context.localized.previousResultsSafe,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                color: AppColors.explorerMuted,
              ),
            ),
            TextButton(
              onPressed: onRetry,
              child: Text(context.localized.retryLoading),
            ),
          ],
        ),
      );
    }
    if (!loading) return const SizedBox(height: 24);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 12,
            height: 12,
            child: CircularProgressIndicator(strokeWidth: 1.5),
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              context.localized.loadingMoreCharacters,
              style: const TextStyle(
                color: AppColors.explorerAccent,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
