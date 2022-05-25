import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:da_techno_app/screen/product_list/Nutrition/product_list/nutrition_productlist_view.dart';
import 'package:da_techno_app/views/ProductImageListView/product_imagelist_view.dart';
import 'package:flutter/material.dart';

class SecondaryNutritionCategoryView extends StatefulWidget {
  const SecondaryNutritionCategoryView({Key? key}) : super(key: key);

  @override
  _SecondaryNutritionCategoryViewState createState() =>
      _SecondaryNutritionCategoryViewState();
}

class _SecondaryNutritionCategoryViewState
    extends State<SecondaryNutritionCategoryView> {
  final CarouselController _controller = CarouselController();
  int _current = 0;
  final List<String> list = [
    'bnr.jpeg',
    'bnr2.jpeg',
    'bnr3.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: CircleAvatar(
                        maxRadius: 15,
                        minRadius: 10,
                        backgroundColor: Colors.grey[300],
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 15,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  AutoSizeText(
                    '  Health',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 1,
                        color: Colors.black),
                    minFontSize: 17,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 150.0,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    },
                  ),
                  items: list.map((item) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(),
                          child: FadeInImage(
                              fit: BoxFit.cover,
                              fadeInDuration: Duration(milliseconds: 5000),
                              width: MediaQuery.of(context).size.width,
                              placeholder:
                                  AssetImage('assets/placeholder_image.jpg'),
                              image: AssetImage(
                                'assets/$item',
                              )),
                          // Image.asset(
                          //   'assets/$item',
                          //   fit: BoxFit.fill,
                          // )
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: list.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 9.0,
                      height: 9.0,
                      margin: EdgeInsets.only(
                        bottom: 10,
                        left: 4,
                        right: 4,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (_current == entry.key
                                ? Color(0xFFFF4E00)
                                : Colors.blue[200]
                            // color: Color(0xFFFF4E00)
                            //     .withOpacity(_current == entry.key ? 0.9 : 0.4),
                            ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              Container(
                height: 20,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[300],
              ),
              ExpansionTile(
                title: Text(
                  'Proteins',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.black),
                ),
                childrenPadding: EdgeInsets.only(left: 20),
                collapsedTextColor: Colors.black54,
                textColor: Colors.black54,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NutritionProductListView()),
                      );
                    },
                    child: Container(
                      height: 40,
                      child: ListTile(
                        title: Text('Whey Proteins'),
                      ),
                    ),
                  ),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Beginners whey Proteins'))),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Whey Proteins Isolate'))),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Raw Whey Protins'))),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Plant Proteins'))),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Beginners whey Proteins'))),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Whey Proteins Isolate'))),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Raw Whey Protins'))),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Plant Proteins'))),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'Gainers',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.black),
                ),
                childrenPadding: EdgeInsets.only(left: 20),
                collapsedTextColor: Colors.black54,
                textColor: Colors.black54,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) =>
                      //           SecondaryCategoryFashionView()),
                      // );
                    },
                    child: Container(
                      height: 40,
                      child: ListTile(
                        title: Text('Weight Gainers'),
                      ),
                    ),
                  ),
                  Container(
                      height: 40, child: ListTile(title: Text('Mass Gainers'))),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Herbal Weight Gainers'))),
                  Container(
                      height: 40, child: ListTile(title: Text('All Gainers'))),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'Protin Foods',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.black),
                ),
                childrenPadding: EdgeInsets.only(left: 20),
                collapsedTextColor: Colors.black54,
                textColor: Colors.black54,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) =>
                      //           SecondaryCategoryFashionView()),
                      // );
                    },
                    child: Container(
                      height: 40,
                      child: ListTile(
                        title: Text('Protein Bars'),
                      ),
                    ),
                  ),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Protein Cookies'))),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Peanut Butter'))),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Protein Shakes'))),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'Pre/post workout',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.black),
                ),
                childrenPadding: EdgeInsets.only(left: 20),
                collapsedTextColor: Colors.black54,
                textColor: Colors.black54,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) =>
                      //           SecondaryCategoryFashionView()),
                      // );
                    },
                    child: Container(
                      height: 40,
                      child: ListTile(
                        title: Text('Pre-Workout'),
                      ),
                    ),
                  ),
                  Container(
                      height: 40, child: ListTile(title: Text('Creatine'))),
                  Container(height: 40, child: ListTile(title: Text('BCAAs'))),
                  Container(
                      height: 40, child: ListTile(title: Text('Carb Blends'))),
                  Container(
                      height: 40, child: ListTile(title: Text('Electrolytes'))),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'Workout Essentials',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.black),
                ),
                childrenPadding: EdgeInsets.only(left: 20),
                collapsedTextColor: Colors.black54,
                textColor: Colors.black54,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) =>
                      //           SecondaryCategoryFashionView()),
                      // );
                    },
                    child: Container(
                      height: 40,
                      child: ListTile(
                        title: Text('Fat Burners'),
                      ),
                    ),
                  ),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Consult Services'))),
                  Container(
                      height: 40, child: ListTile(title: Text('L Carnitine'))),
                  Container(
                      height: 40,
                      child: ListTile(
                          title: Text('Multivitamins For Bodybuilding'))),
                  Container(
                      height: 40, child: ListTile(title: Text('Pre Hormone'))),
                  Container(height: 40, child: ListTile(title: Text('ZMA'))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
