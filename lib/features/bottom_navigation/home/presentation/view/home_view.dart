import 'package:cosmetics_app/core/constant/costom_colors.dart';
import 'package:cosmetics_app/core/constant/costom_text_style.dart';
import 'package:cosmetics_app/core/utils/extention_sizedbox.dart';
import 'package:cosmetics_app/core/utils/navigator.dart';
import 'package:cosmetics_app/core/wigdets/app_image.dart';
import 'package:cosmetics_app/features/bottom_navigation/cart/presentation/view/cart_view.dart';
import 'package:cosmetics_app/features/bottom_navigation/home/data/home_models.dart';
import 'package:cosmetics_app/features/bottom_navigation/home/presentation/widgets/costom_header.dart';
import 'package:cosmetics_app/features/bottom_navigation/home/presentation/widgets/costom_search.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              CostomSearch(),
              CostomHeaderCarousel(),
              20.he,
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 270,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 2,
                ),
                itemCount: HomeModels.models.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      NavigateTo().push(
                        page: CartView(
                          imagess: HomeModels.models[index].images,
                          price: HomeModels.models[index].price,
                          title: HomeModels.models[index].title,
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(12),
                      width: 230,
                      height: 237,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 230,
                                height: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: AppImage(
                                  url: HomeModels.models[index].images,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                right: 0,
                                child: Container(
                                  margin: EdgeInsets.all(6),
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.white,
                                  ),
                                  child: Icon(
                                    Icons.shopping_cart,
                                    size: 20,
                                    color: CostomColors.secandryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          20.he,
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              HomeModels.models[index].title,
                              style: CostomTextStyle.text16Bold,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              HomeModels.models[index].price,
                              style: CostomTextStyle.text14boldpink,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
