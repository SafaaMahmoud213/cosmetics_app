import 'package:cosmetics_app/core/constant/costom_colors.dart';
import 'package:cosmetics_app/core/constant/costom_image.dart' show CostomImage;
import 'package:cosmetics_app/core/constant/costom_text_style.dart';
import 'package:cosmetics_app/core/wigdets/app_image.dart';
import 'package:cosmetics_app/features/bottom_navigation/profile/data/profile_model.dart';
import 'package:flutter/material.dart';

class CostomListView extends StatelessWidget {
  const CostomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: ProfileModel.models.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              AppImage(
                url: ProfileModel.models[index].images,
                width: 20,
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  ProfileModel.models[index].texts,
                  style: CostomTextStyle.text16Bold.copyWith(
                    color: index == 5 ? Colors.red : CostomColors.primaryColor,
                  ),
                ),
              ),

              Spacer(),
              index == 5
                  ? SizedBox.shrink()
                  : Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AppImage(
                      url: CostomImage.back,
                      color: CostomColors.primaryColor,
                      width: 10,
                      height: 10,
                    ),
                  ),
            ],
          ),
        );
      },
    );
  }
}
