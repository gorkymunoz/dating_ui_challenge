import 'package:flutter/material.dart';

import '../../foundations/foundations.dart';

class MatchPercentage extends StatelessWidget {
  final int matchPercentage;

  const MatchPercentage({Key? key, required this.matchPercentage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DatingSizes.percentageCardSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(DatingSpaces.borderPercentageCard),
          gradient: const LinearGradient(
              colors: [
        DatingColors.likeIconInitialGradient,
        DatingColors.finalGradient
      ])),
      padding: const EdgeInsets.all(DatingSpaces.paddingXS),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(
            Icons.favorite,
            size: DatingSizes.iconSize,
            color: DatingColors.colorOnSurface,
          ),
          Text(
            '$matchPercentage% Match!',
            style: const TextStyle(color: DatingColors.colorOnSurface),
          )
        ],
      ),
    );
  }
}
