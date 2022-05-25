import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:da_techno_app/screen/product_list/Nutrition/Secondary%20Category/secondary_category_view.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class NutritionCategoryListView extends StatefulWidget {
  const NutritionCategoryListView({Key? key}) : super(key: key);

  @override
  State<NutritionCategoryListView> createState() =>
      _NutritionCategoryListViewState();
}

class _NutritionCategoryListViewState extends State<NutritionCategoryListView> {
  final CarouselController _controller = CarouselController();
  int _current = 0;

  int lengthCategory = 6;
  List<String> hnImageList = [
    'sports_nutrition.png',
    'vitamin_nutrition.png',
    'ayurveda_herbs.png',
    'health_food_drinks.png',
    'fitness.png',
    'wellness.png',
  ];

  List<String> hnTextList = [
    'Sports Nutrition',
    'Vitamin & Supplements',
    'Ayurveda & Herbs',
    'Health Food & Drinks',
    'Fitness',
    'Wellness'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Health & Nutrition",
          style: TextStyle(color: Colors.black),
        ),
        leading: Center(
          child: SimpleShadow(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: CircleAvatar(
                maxRadius: 15,
                minRadius: 15,
                backgroundColor: Colors.grey[50],
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 2.5 / 2,
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: lengthCategory,
            itemBuilder: (BuildContext ctx, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondaryNutritionCategoryView()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 10, right: 10, bottom: 10),
                  child: SimpleShadow(
                    sigma: 1,
                    opacity: 0.250,
                    offset: Offset(4, 4),
                    child: Container(
                      width: 188.24,
                      height: 196,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          border: Border.all(color: Colors.black45)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 5, left: 5, right: 5, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FadeInImage(
                                  fit: BoxFit.contain,
                                  width: 175.62,
                                  height: 125.17,
                                  fadeInDuration: Duration(milliseconds: 2000),
                                  placeholder: AssetImage(
                                      'assets/placeholder_image.jpg'),
                                  image: AssetImage(
                                    'assets/${hnImageList[index]}',
                                  )),
                              AutoSizeText(
                                "${hnTextList[index]}",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center,
                                minFontSize: 15,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ]),
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}

class MenuItem {
  final String text;
  final IconData icon;

  const MenuItem({
    required this.text,
    required this.icon,
  });
}

class MenuItems {
  static const List<MenuItem> firstItems = [like, share, download];
  static const List<MenuItem> secondItems = [cancel];

  static const like = MenuItem(text: 'Like', icon: Icons.favorite);
  static const share = MenuItem(text: 'Share', icon: Icons.share);
  static const download = MenuItem(text: 'Download', icon: Icons.download);
  static const cancel = MenuItem(text: 'Cancel', icon: Icons.cancel);

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Icon(
          item.icon,
          color: Colors.white,
          size: 22,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          item.text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  static onChanged(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.like:
        //Do something
        break;
      case MenuItems.share:
        //Do something
        break;
      case MenuItems.download:
        //Do something
        break;
      case MenuItems.cancel:
        //Do something
        break;
    }
  }
}
