import 'package:flutter/material.dart';
import 'package:jewel_ar/data/static_data.dart';

import 'policy_with_icon.dart';

class OurAppBenefitsSection extends StatelessWidget {
  const OurAppBenefitsSection({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height * 0.12,
      alignment: Alignment.center,
      // color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: ourAppBenefitList
            .map(
              (item) => PolicyWithIcons(
                  width: width, height: height, policyText: item),
            )
            .toList(),
        // children: [
        //   PolicyWithIcons(
        //     width: width,
        //     height: height,
        //     policyText: ,
        //   ),
        //   PolicyWithIcons(
        //     width: width,
        //     height: height,
        //     policyText:
        //   ),
        //   PolicyWithIcons(
        //     width: width,
        //     height: height,
        //     policyText:
        //   ),
        //   PolicyWithIcons(
        //     width: width,
        //     height: height,
        //     policyText:
        //   ),
        // ],
      ),
    );
  }
}
