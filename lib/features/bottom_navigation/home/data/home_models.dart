import 'package:cosmetics_app/core/constant/costom_image.dart';

class HomeModels {
  String images;
  String title;
  String price;
  String subTitle;
  HomeModels({
    required this.images,
    required this.price,
    required this.subTitle,
    required this.title,
  });

  static List<HomeModels> models = [
    HomeModels(
      images: CostomImage.grid1,
      price: "\$22.40",
      title: "Face tint / lip tint",
      subTitle: "Makeup",
    ),
    HomeModels(
      images: CostomImage.grid2,
      price: "\$33.40",
      title: "Athe Red lipstick",
      subTitle: "Bundles",
    ),
    HomeModels(
      images: CostomImage.grid3,
      price: "\$122.40",
      title: "Mascara for lashes",
      subTitle: "Makeup",
    ),
    HomeModels(
      images: CostomImage.grid4,
      price: "\$67.40",
      title: "Blemish cover",
      subTitle: "Makeup",
    ),
    HomeModels(
      images: CostomImage.grid5,
      price: "\$36.40",
      title: "IDYLL Perfume",
      subTitle: "Perfumes",
    ),
    HomeModels(
      images: CostomImage.grid6,
      price: "\$55.40",
      title: "Hand Cream",
      subTitle: "Skin Care",
    ),
    HomeModels(
      images: CostomImage.grid7,
      price: "\$56.40",
      title: "Pink Lipstick",
      subTitle: "Makeup",
    ),
    HomeModels(
      images: CostomImage.grid8,
      subTitle: "Makeup",
      price: "\$680.40",
      title: "Cleansing Foam",
    ),
  ];
}
