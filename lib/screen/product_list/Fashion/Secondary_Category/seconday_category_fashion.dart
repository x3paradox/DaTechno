import 'package:da_techno_app/screen/product_list/Fashion/ProductList/fashion_product_list_view.dart';
import 'package:da_techno_app/screen/product_list/Fashion/fashion_categories_view.dart';
import 'package:da_techno_app/screen/product_list/Fashion/fashion_product_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:simple_shadow/simple_shadow.dart';

class SecondaryCategoryFashionView extends StatefulWidget {
  const SecondaryCategoryFashionView({Key? key}) : super(key: key);

  @override
  State<SecondaryCategoryFashionView> createState() =>
      _SecondaryCategoryFashionViewState();
}

class _SecondaryCategoryFashionViewState
    extends State<SecondaryCategoryFashionView> {
  final CarouselController _controller = CarouselController();
  int _current = 0;
  final List<String> list = [
    'men_offrer_banner.jpg',
    'men_offer_banner2.jpg',
    'men_offer_banner3.jpg',
  ];

  final List<String> brandProduct = [
    'b_pro_3.jpg',
    'b_pro_4.jpg',
    'b_pro_1.jpg',
    'b_pro_2.jpg',
  ];
  final List<String> brandLogo = [
    'b_4.png',
    'b_3.png',
    'b_2.png',
    'b_5.png',
  ];

  int totalBrandCount = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Men APPAREL",
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
        physics: AlwaysScrollableScrollPhysics(),
        child: SafeArea(
            child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
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
                          fit: BoxFit.fill,
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
            SizedBox(
              height: 10,
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
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  GradientText(
                    'WHAT ARE YOU',
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 90, 178, 236),
                      Color.fromARGB(255, 92, 172, 238),
                    ]),
                  ),
                  GradientText(
                    'LOOKIN FOR',
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 138, 94, 221),
                      Color.fromARGB(255, 109, 129, 241),
                    ]),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                GridView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                  ),
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FashionProductListViews()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          children: [
                            Container(
                              width: 180,
                              height: 153.6,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.grey[300]),
                              child: FadeInImage(
                                  fit: BoxFit.fitWidth,
                                  fadeInDuration: Duration(milliseconds: 5000),
                                  width: MediaQuery.of(context).size.width,
                                  placeholder: AssetImage(
                                      'assets/placeholder_image.jpg'),
                                  image: AssetImage(
                                    'assets/blue.png',
                                  )),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            // AutoSizeText(
                            //   'Round Necks',

                            //   // maxFontSize: 20,
                            //   style: TextStyle(
                            //       fontWeight: FontWeight.normal, fontSize: 22),
                            //   minFontSize: 17.5,
                            // ),
                            AutoSizeText(
                              'Round Necks',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.normal),
                              minFontSize: 17,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            )
                            // Text('35+ Options'),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.grey[300]),
                              child: FadeInImage(
                                  fit: BoxFit.fitWidth,
                                  fadeInDuration: Duration(milliseconds: 5000),
                                  width: MediaQuery.of(context).size.width,
                                  placeholder: AssetImage(
                                      'assets/placeholder_image.jpg'),
                                  image: AssetImage(
                                    'assets/green.png',
                                  )),
                              width: 180,
                              height: 153.6,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            AutoSizeText(
                              'V-Necks',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 20),
                              minFontSize: 17,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            // Text('35+ Options'),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.grey[300]),
                              child: FadeInImage(
                                  fit: BoxFit.fitWidth,
                                  fadeInDuration: Duration(milliseconds: 5000),
                                  width: MediaQuery.of(context).size.width,
                                  placeholder: AssetImage(
                                      'assets/placeholder_image.jpg'),
                                  image: AssetImage(
                                    'assets/polo.png',
                                  )),
                              width: 180,
                              height: 153.6,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            AutoSizeText(
                              'Polos',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 20),
                              minFontSize: 17,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            // Text('35+ Options'),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.grey[300]),
                              child: FadeInImage(
                                  fit: BoxFit.fitWidth,
                                  fadeInDuration: Duration(milliseconds: 5000),
                                  width: MediaQuery.of(context).size.width,
                                  placeholder: AssetImage(
                                      'assets/placeholder_image.jpg'),
                                  image: AssetImage(
                                    'assets/fullgreen.png',
                                  )),
                              width: 180,
                              height: 153.6,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            AutoSizeText(
                              'Full Sleeves',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 20),
                              minFontSize: 17,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            // Text('35+ Options'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 20,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[300],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      GradientText(
                        'FOR THE',
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 90, 178, 236),
                          Color.fromARGB(255, 92, 172, 238),
                        ]),
                      ),
                      GradientText(
                        'BUDGET SHOPPER',
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 138, 94, 221),
                          Color.fromARGB(255, 109, 129, 241),
                        ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            GridView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0.0,
                  mainAxisExtent: 90.0),
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText(
                                  '\u{20B9}399',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
                                  minFontSize: 17,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                AutoSizeText(
                                  'Store',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
                                  minFontSize: 17,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          height: 70,
                          width: 90,
                          // clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(12),
                            // image: DecorationImage(
                            //     fit: BoxFit.fitWidth,
                            //     image: AssetImage(
                            //       'assets/fullgreen.png',
                            //     )),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText(
                                  '\u{20B9}499',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
                                  minFontSize: 17,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                AutoSizeText(
                                  'Store',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
                                  minFontSize: 17,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          height: 70,
                          width: 90,
                          // clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(12),
                            // image: DecorationImage(
                            //     fit: BoxFit.fitWidth,
                            //     image: AssetImage(
                            //       'assets/fullgreen.png',
                            //     )),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText(
                                  '\u{20B9}599',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
                                  minFontSize: 17,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                AutoSizeText(
                                  'Store',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
                                  minFontSize: 17,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          height: 70,
                          width: 90,
                          // clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(12),
                            // image: DecorationImage(
                            //     fit: BoxFit.fitWidth,
                            //     image: AssetImage(
                            //       'assets/fullgreen.png',
                            //     )),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText(
                                  '\u{20B9}699',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
                                  minFontSize: 17,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                AutoSizeText(
                                  'Store',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
                                  minFontSize: 17,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          height: 70,
                          width: 90,
                          // clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(12),
                            // image: DecorationImage(
                            //     fit: BoxFit.fitWidth,
                            //     image: AssetImage(
                            //       'assets/fullgreen.png',
                            //     )),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText(
                                  '\u{20B9}799',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
                                  minFontSize: 17,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                AutoSizeText(
                                  'Store',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
                                  minFontSize: 17,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          height: 70,
                          width: 90,
                          // clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(12),
                            // image: DecorationImage(
                            //     fit: BoxFit.fitWidth,
                            //     image: AssetImage(
                            //       'assets/fullgreen.png',
                            //     )),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText(
                                  '\u{20B9}899',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
                                  minFontSize: 17,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                AutoSizeText(
                                  'Store',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
                                  minFontSize: 17,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          height: 70,
                          width: 90,
                          // clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(12),
                            // image: DecorationImage(
                            //     fit: BoxFit.fitWidth,
                            //     image: AssetImage(
                            //       'assets/fullgreen.png',
                            //     )),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 20,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[300],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  GradientText(
                    'MOST',
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 90, 178, 236),
                      Color.fromARGB(255, 92, 172, 238),
                    ]),
                  ),
                  GradientText(
                    'WANTED BRANDS',
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 138, 94, 221),
                      Color.fromARGB(255, 109, 129, 241),
                    ]),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300,
                      childAspectRatio: 1.5 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: totalBrandCount,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      height: 180,
                      width: 268,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black)),
                      child: Column(
                        children: [
                          Flexible(
                            flex: 5,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: FadeInImage(
                                  fit: BoxFit.fill,
                                  fadeInDuration: Duration(milliseconds: 5000),
                                  width: 180,
                                  height: 211,
                                  placeholder: AssetImage(
                                      'assets/placeholder_image.jpg'),
                                  image: AssetImage(
                                    'assets/${brandProduct[index]}',
                                  )),
                            ),
                          ),
                          Flexible(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assets/${brandLogo[index]}",
                                  fit: BoxFit.fill,
                                ),
                              ))
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.grey[300],
              height: 20,
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  GradientText(
                    'BETTER ',
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 90, 178, 236),
                      Color.fromARGB(255, 92, 172, 238),
                    ]),
                  ),
                  GradientText(
                    'TOGETHER',
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 138, 94, 221),
                      Color.fromARGB(255, 109, 129, 241),
                    ]),
                  ),
                ],
              ),
            ),
            GridView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 0,
                mainAxisSpacing: 0,
              ),
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 180,
                    height: 191.2,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey[300]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: FadeInImage(
                                fit: BoxFit.fitWidth,
                                fadeInDuration: Duration(milliseconds: 5000),
                                width: MediaQuery.of(context).size.width,
                                placeholder:
                                    AssetImage('assets/placeholder_image.jpg'),
                                image: AssetImage(
                                  'assets/pent.png',
                                )),
                          ),
                          height: 153.6,
                          width: 180,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        AutoSizeText(
                          'Jeans',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 20),
                          minFontSize: 17,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        // Text('35+ Options'),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 180,
                    height: 191.2,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey[300]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: FadeInImage(
                                fit: BoxFit.fitWidth,
                                fadeInDuration: Duration(milliseconds: 5000),
                                width: MediaQuery.of(context).size.width,
                                placeholder:
                                    AssetImage('assets/placeholder_image.jpg'),
                                image: AssetImage(
                                  'assets/short.png',
                                )),
                          ),
                          height: 153.6,
                          width: 180,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        AutoSizeText(
                          'Casual Trousers',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 20),
                          minFontSize: 17,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        // Text('35+ Options'),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 180,
                    height: 191.2,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey[300]),
                          child: FadeInImage(
                              fit: BoxFit.fitWidth,
                              fadeInDuration: Duration(milliseconds: 5000),
                              width: MediaQuery.of(context).size.width,
                              placeholder:
                                  AssetImage('assets/placeholder_image.jpg'),
                              image: AssetImage(
                                'assets/trouser.png',
                              )),
                          height: 153.6,
                          width: 180,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        AutoSizeText(
                          'Casual Trousers',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 20),
                          minFontSize: 17,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        // Text('35+ Options'),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 180,
                    height: 191.2,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: FadeInImage(
                                fit: BoxFit.fitWidth,
                                fadeInDuration: Duration(milliseconds: 5000),
                                width: MediaQuery.of(context).size.width,
                                placeholder:
                                    AssetImage('assets/placeholder_image.jpg'),
                                image: AssetImage(
                                  'assets/c.png',
                                )),
                          ),
                          height: 153.6,
                          width: 180,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        AutoSizeText(
                          'Casual Shoes',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 20),
                          minFontSize: 17,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        // Text('35+ Options'),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 180,
                    height: 191.2,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey[300]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: FadeInImage(
                                fit: BoxFit.fitWidth,
                                fadeInDuration: Duration(milliseconds: 5000),
                                width: MediaQuery.of(context).size.width,
                                placeholder:
                                    AssetImage('assets/placeholder_image.jpg'),
                                image: AssetImage(
                                  'assets/shoes.jpg',
                                )),
                          ),
                          height: 153.6,
                          width: 180,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        AutoSizeText(
                          'Sport Shoes',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 20),
                          minFontSize: 17,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        // Text('35+ Options'),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 180,
                    height: 191.2,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey[300]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: FadeInImage(
                                fit: BoxFit.fitWidth,
                                fadeInDuration: Duration(milliseconds: 5000),
                                width: MediaQuery.of(context).size.width,
                                placeholder:
                                    AssetImage('assets/placeholder_image.jpg'),
                                image: AssetImage(
                                  'assets/s.jpg',
                                )),
                          ),
                          height: 153.6,
                          width: 180,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        AutoSizeText(
                          'Formal Shoes',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 20),
                          minFontSize: 17,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        // Text('35+ Options'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.grey[300],
              height: 20,
              width: MediaQuery.of(context).size.width,
            )
          ],
        )),
      ),
    );
  }
}
