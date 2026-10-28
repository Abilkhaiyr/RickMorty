import 'package:flutter/material.dart';
import '../../../../core/theme/recources.dart';
import '../../../../core/utils/extensions/context_extension.dart';

class CharactersSkeleton extends StatelessWidget {
  const CharactersSkeleton({super.key});

  Widget _bar(double width, double height) => Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: AppColors.explorerElevated,
      borderRadius: BorderRadius.circular(6),
    ),
  );

  @override
  Widget build(BuildContext context) => Semantics(
    label: context.localized.loadingCharacters,
    child: Column(
      children: List.generate(
        4,
        (_) => Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.explorerSurface,
              borderRadius: BorderRadius.circular(19),
            ),
            child: Row(
              children: [
                Container(
                  width: 81,
                  height: 81,
                  decoration: BoxDecoration(
                    color: AppColors.explorerElevated,
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FractionallySizedBox(
                        widthFactor: .9,
                        child: _bar(double.infinity, 14),
                      ),
                      const SizedBox(height: 16),
                      FractionallySizedBox(
                        widthFactor: .62,
                        child: _bar(double.infinity, 11),
                      ),
                      const SizedBox(height: 12),
                      _bar(75, 15),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
