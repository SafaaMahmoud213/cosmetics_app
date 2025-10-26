import 'package:cosmetics_app/core/constant/costom_image.dart';

class ProfileModel {
  final String texts, images;
  ProfileModel({required this.images, required this.texts});

  static List<ProfileModel> models = [
    ProfileModel(images: CostomImage.edit, texts: "Edit Info"),
    ProfileModel(images: CostomImage.order, texts: " Order History"),
    ProfileModel(images: CostomImage.wallet, texts: "Wallet "),
    ProfileModel(images: CostomImage.setting, texts: " Settings"),
    ProfileModel(images: CostomImage.voucher, texts: " Voucher "),
    ProfileModel(images: CostomImage.logout, texts: " Logout"),
  ];
}
