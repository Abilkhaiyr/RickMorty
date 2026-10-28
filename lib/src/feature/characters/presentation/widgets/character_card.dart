import 'package:flutter/material.dart';
import '../../../../core/theme/recources.dart';
import '../../models/character.dart';
import 'character_image.dart';
import 'character_status_badge.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({
    required this.character,
    required this.onTap,
    this.searchResult = false,
    super.key,
  });
  final Character character;
  final VoidCallback onTap;
  final bool searchResult;

  @override
  Widget build(BuildContext context) => Material(
    color: AppColors.explorerSurface,
    borderRadius: BorderRadius.circular(19),
    clipBehavior: Clip.antiAlias,
    child: InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Hero(
              tag: 'character-${character.id}',
              child: CharacterImage(
                url: character.image,
                name: character.name,
                size: 81,
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    character.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 17,
                      height: 1.3,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    searchResult
                        ? character.species
                        : '${character.species} • ${character.origin}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: AppColors.explorerMuted,
                      fontSize: 12,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 6),
                  CharacterStatusBadge(status: character.status),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
