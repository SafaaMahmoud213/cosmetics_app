import 'package:cosmetics_app/core/constant/costom_text_style.dart';
import 'package:cosmetics_app/core/utils/extention_sizedbox.dart';
import 'package:cosmetics_app/core/wigdets/app_image.dart';
import 'package:cosmetics_app/features/bottom_navigation/home/data/home_models.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartView extends StatefulWidget {
  String? imagess;
  String? title;

  final String? price;
  CartView({super.key, this.imagess, this.title, this.price});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            40.he,
            Center(child: Text("My Cart", style: CostomTextStyle.text28bold)),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: HomeModels.models.length,
              itemBuilder: (BuildContext context, int index) {
                return widget.imagess == null
                    ? Center(child: Text("data"))
                    : Row(
                      children: [
                        AppImage(
                          url: widget.imagess![index],
                          width: 65,
                          height: 70,
                        ),

                        // Column(
                        //   children: [
                        //     Text(
                        //       title?[index] ?? "",

                        //       style: CostomTextStyle.text16Bold,
                        //     ),
                        //     Text(
                        //       price?[index] ?? "",
                        //       style: CostomTextStyle.text16Bold,
                        //     ),
                        //   ],
                        // ),
                      ],
                    );
              },
            ),
          ],
        ),
      ),
    );
  }
}
