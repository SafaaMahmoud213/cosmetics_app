import 'package:cosmetics_app/core/constant/costom_image.dart';
import 'package:cosmetics_app/core/constant/costom_text_style.dart';
import 'package:cosmetics_app/core/utils/extention_sizedbox.dart';
import 'package:cosmetics_app/features/bottom_navigation/profile/presentation/widgets/costom_list_view.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,

                    colors: [
                      Color(0xffECA4C5),
                      Color(0xff434C6D).withValues(alpha: 0.83),
                    ],
                  ),
                ),
                child: Text("data"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Align(
                  alignment: Alignment.bottomCenter,

                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(CostomImage.profiles),
                  ),
                ),
              ),
            ],
          ),
          10.he,
          Text("Sara Samer Talaat", style: CostomTextStyle.text16Bold),
          20.he,
          CostomListView(),
        ],
      ),
    );
  }
}
