import 'package:flutter/material.dart';
import '../../../../core/theme/recources.dart';
import '../../../../core/utils/extensions/context_extension.dart';

class CatalogueNavigationBar extends StatelessWidget {
  const CatalogueNavigationBar({super.key});
  @override
  Widget build(BuildContext context) => ColoredBox(
    color: AppColors.explorerSurface,
    child: SafeArea(
      top: false,
      child: SizedBox(
        height: 61,
        child: Row(
          children: [
            Expanded(
              child: Semantics(
                selected: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '◉',
                      style: TextStyle(color: AppColors.explorerAccent),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      context.localized.charactersTab,
                      style: const TextStyle(
                        color: AppColors.explorerAccent,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Semantics(
                enabled: false,
                label: context.localized.exploreUnavailable,
                child: ExcludeSemantics(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '✦',
                        style: TextStyle(color: AppColors.explorerMuted),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        context.localized.exploreTab,
                        style: const TextStyle(
                          color: AppColors.explorerMuted,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
