import 'package:flutter/material.dart';

import '/utils/utils.dart';
import '/widgets/widgets.dart';
import '/models/models.dart';

class TopHeaderOptions extends StatelessWidget {
  final List<TopHeaderOptionsModel> _iconNames = [
    TopHeaderOptionsModel(
      name: "Delivery",
      imageName: ImageNames.locationSecondary,
    ),
    TopHeaderOptionsModel(
      name: "Pick-up",
      imageName: ImageNames.storeSecondary,
    ),
    TopHeaderOptionsModel(
      name: "Carhop",
      imageName: ImageNames.manCar,
    ),
    TopHeaderOptionsModel(
      name: "Dine in",
      imageName: ImageNames.chairTable,
    ),
    TopHeaderOptionsModel(
      name: "Drive-Thru",
      imageName: ImageNames.carStore,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ..._iconNames.map(
          (element) {
            return Column(
              children: [
                CustomIcon(
                  icon: element.imageName,
                  backgroundPadding: AppSpacing.medium,
                  isGradient: element.imageName == ImageNames.locationSecondary,
                  onPress: () {},
                ),
                const SizedBox(height: AppSpacing.small),
                FittedBox(
                  child: Text(
                    element.name.toUpperCase(),
                    style: AppTextStyles.regularTextSemiBold,
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
