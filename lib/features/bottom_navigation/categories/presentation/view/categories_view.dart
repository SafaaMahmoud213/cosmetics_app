import 'package:cosmetics_app/core/constant/costom_colors.dart';
import 'package:cosmetics_app/core/constant/costom_image.dart';
import 'package:cosmetics_app/core/constant/costom_text_style.dart';
import 'package:cosmetics_app/core/utils/extention_sizedbox.dart';
import 'package:cosmetics_app/core/wigdets/app_image.dart';
import 'package:cosmetics_app/features/bottom_navigation/home/data/home_models.dart';
import 'package:cosmetics_app/features/bottom_navigation/home/presentation/widgets/costom_search.dart';
import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            40.he,
            Center(
              child: Text("Categories", style: CostomTextStyle.text28bold),
            ),
            CostomSearch(),

            ListView.separated(
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: HomeModels.models.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      AppImage(
                        url: HomeModels.models[index].images,
                        width: 65,
                        height: 70,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          HomeModels.models[index].subTitle,
                          style: CostomTextStyle.text16Bold,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: AppImage(
                          url: CostomImage.back,
                          color: CostomColors.primaryColor,
                          width: 15,
                          height: 15,
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Divider(
                    color: Colors.grey.shade300,
                    height: 2,
                    endIndent: 30,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
