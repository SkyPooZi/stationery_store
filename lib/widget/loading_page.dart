import 'package:flutter/material.dart';
import 'package:stationery_store/widget/skeleton.dart';

import '../helper/themes.dart';

class ProductCardSkeleton extends StatelessWidget {
  const ProductCardSkeleton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          const Skeleton(height: 120, width: 120),
          const SizedBox(width: defaultPadding),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Expanded(
                      child: Skeleton(),
                    ),
                    SizedBox(width: defaultPadding),
                    Expanded(
                      child: Skeleton(),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding / 2),
                const Skeleton(width: 60,),
                const SizedBox(height: defaultPadding / 2),
                const Skeleton(width: 80,),
                const SizedBox(height: defaultPadding / 2),
                Row(
                  children: const [
                    Expanded(
                      child: Skeleton(),
                    ),
                    SizedBox(width: defaultPadding),
                    Expanded(
                      child: Skeleton(),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}