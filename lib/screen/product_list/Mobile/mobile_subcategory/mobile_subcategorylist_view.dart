import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MobileSubcatgoryListView extends StatefulWidget {
  const MobileSubcatgoryListView({Key? key}) : super(key: key);

  @override
  State<MobileSubcatgoryListView> createState() =>
      _MobileSubcatgoryListViewState();
}

class _MobileSubcatgoryListViewState extends State<MobileSubcatgoryListView> {
  final List<String> product = [
    'mobile_brand_1.jpg',
    'mobile_brand_2.jpg',
    'mobile_brand_3.jpg',
    'mobile_brand_4.jpg',
    'mobile_brand_5.jpg',
    'mobile_brand_6.jpg',
  ];
  final List<String> logo = [
    'apple-black-logo.png',
    'samsung.png',
    'oppo.jpg',
    'vivo.jpg',
    'one_plus.jpg',
    'mi.jpg',
  ];
  final CarouselController _controller = CarouselController();
  int _current = 0;
  final List<String> list = [
    'mobile_banner_1.jpg',
    'mobile_banner_2.jpg',
    'mobile_banner_3.jpg',
  ];

  String fixedText = "Under";
  final List<String> priceRange = [
    'Under \u{20B9}10,000',
    '\u{20B9}10,001 to \u{20B9}20,000',
    '\u{20B9}20,001 to \u{20B9}30,000',
    '\u{20B9}30,001 to \u{20B9}50,000',
    'Above \u{20B9}50,000',
  ];

  final List<String> featureImage = [
    'mobile_by_feature_1.jpg',
    'mobile_by_feature_2.jpg',
    'mobile_by_feature_3.jpg',
    'mobile_by_feature_4.jpg',
  ];
  final List<String> featureText = [
    '5G PHONES',
    'SUPERIOR CAMERA',
    'FAST CHARGING',
    'GAMING',
  ];

  final List<String> featureRam = [
    '3 GB',
    '4 GB',
    '6 GB',
    '8 GB',
    '12 GB',
  ];
  String fixedTextRam = "UP TO";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
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
                    'Whey Proteins',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 1,
                        color: Colors.black),
                    minFontSize: 15,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              CarouselSlider(
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
                color: Colors.grey[300],
              ),
              SizedBox(
                height: 20,
              ),
              AutoSizeText(
                "BRANDS TO BROWSE",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 5),
                textAlign: TextAlign.justify,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                minFontSize: 15,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 10, right: 10, bottom: 20),
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 2 / 2,
                            crossAxisCount: 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                    itemCount: 6,
                    itemBuilder: (BuildContext ctx, index) {
                      return GridTile(
                        // key: ValueKey(_products[index]['id']),
                        child: Container(
                          width: 180.83,
                          height: 213,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: const Offset(
                                    2.0,
                                    2.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 0.5,
                                ), //BoxShadow
                                BoxShadow(
                                  color: Colors.white,
                                  offset: const Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ),
                              ]),
                        ),
                        header: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12)),
                          child: FadeInImage(
                            height: 145.33,
                            fit: BoxFit.fill,
                            fadeInDuration: Duration(milliseconds: 5000),
                            width: 180.83,
                            placeholder:
                                AssetImage('assets/placeholder_image.jpg'),
                            image: AssetImage(
                              'assets/${product[index]}',
                            ),
                          ),
                        ),
                        footer: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GridTileBar(
                              title: Image.asset('assets/${logo[index]}')),
                        ),
                      );
                      // return GestureDetector(
                      //   onTap: () {},
                      //   child: FittedBox(
                      //     fit: BoxFit.fill,
                      //     child: Container(
                      //       height: 213,
                      //       width: 180.83,
                      //       decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.only(
                      //               bottomLeft: Radius.circular(12.0),
                      //               bottomRight: Radius.circular(12),
                      //               topRight: Radius.circular(12),
                      //               topLeft: Radius.circular(12)),
                      //           boxShadow: [
                      //             BoxShadow(
                      //               color: Colors.black12,
                      //               offset: const Offset(
                      //                 2.0,
                      //                 2.0,
                      //               ),
                      //               blurRadius: 10.0,
                      //               spreadRadius: 0.5,
                      //             ), //BoxShadow
                      //             BoxShadow(
                      //               color: Colors.white,
                      //               offset: const Offset(0.0, 0.0),
                      //               blurRadius: 0.0,
                      //               spreadRadius: 0.0,
                      //             ),
                      //           ]),
                      //       child: Column(
                      //         children: [
                      //           Container(
                      //             width: MediaQuery.of(context).size.width,
                      //             height: 145.33,
                      //             padding: EdgeInsets.all(0),
                      //             decoration: BoxDecoration(
                      //               image: DecorationImage(
                      //                 image: FadeInImage(
                      //                   height:
                      //                       MediaQuery.of(context).size.height *
                      //                           0.4,
                      //                   fit: BoxFit.fill,
                      //                   fadeInDuration:
                      //                       Duration(milliseconds: 5000),
                      //                   width:
                      //                       MediaQuery.of(context).size.width,
                      //                   placeholder: AssetImage(
                      //                       'assets/placeholder_image.jpg'),
                      //                   image: AssetImage(
                      //                     'assets/${product[index]}',
                      //                   ),
                      //                 ).image,
                      //               ),
                      //             ),
                      //           ),
                      //           // Flexible(
                      //           //   child: ClipRRect(
                      //           //     borderRadius: BorderRadius.only(
                      //           //         topLeft: Radius.circular(12),
                      //           //         topRight: Radius.circular(12)),
                      //           //     child: FadeInImage(
                      //           //       height: MediaQuery.of(context).size.height *
                      //           //           0.4,
                      //           //       fit: BoxFit.fill,
                      //           //       fadeInDuration:
                      //           //           Duration(milliseconds: 5000),
                      //           //       width: MediaQuery.of(context).size.width,
                      //           //       placeholder: AssetImage(
                      //           //           'assets/placeholder_image.jpg'),
                      //           //       image: AssetImage(
                      //           //         'assets/${product[index]}',
                      //           //       ),
                      //           //     ),
                      //           //   ),
                      //           // ),
                      //           Expanded(
                      //             flex: 5,
                      //             child: Padding(
                      //               padding: const EdgeInsets.all(8.0),
                      //               child: Image.asset('assets/${logo[index]}'),
                      //             ),
                      //           )
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // );
                    }),
              ),
              Container(
                height: 20,
                color: Colors.grey[300],
              ),
              FadeInImage(
                height: 82,
                fit: BoxFit.fill,
                fadeInDuration: Duration(milliseconds: 5000),
                width: MediaQuery.of(context).size.width,
                placeholder: AssetImage('assets/placeholder_image.jpg'),
                image: AssetImage(
                  'assets/mobile_banner_4.jpg',
                ),
              ),
              Container(
                height: 20,
                color: Colors.grey[300],
              ),
              SizedBox(
                height: 20,
              ),
              AutoSizeText(
                "choose by price".toUpperCase(),
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 5),
                textAlign: TextAlign.justify,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                minFontSize: 15,
              ),
              Container(
                height: 160,
                child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 106,
                          height: 106,
                          // child:
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFFEDEDED)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Center(
                              child: AutoSizeText(
                                "${priceRange[index]}",
                                style: TextStyle(
                                    fontSize: 17.5,
                                    fontWeight: FontWeight.w400),
                                minFontSize: 17,
                                maxLines: 3,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Container(
                height: 20,
                color: Colors.grey[300],
              ),
              SizedBox(
                height: 20,
              ),
              AutoSizeText(
                "explore by features".toUpperCase(),
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 5),
                textAlign: TextAlign.justify,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                minFontSize: 15,
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 10, right: 10, bottom: 20),
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 2 / 2.5,
                              crossAxisCount: 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 2.5),
                      itemCount: 4,
                      itemBuilder: (BuildContext ctx, index) {
                        return GridTile(
                          // key: ValueKey(_products[index]['id']),
                          child: Container(
                            width: 180.83,
                            height: 244,
                          ),
                          header: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            child: FadeInImage(
                              height: 213,
                              fit: BoxFit.fill,
                              fadeInDuration: Duration(milliseconds: 5000),
                              width: 180.83,
                              placeholder:
                                  AssetImage('assets/placeholder_image.jpg'),
                              image: AssetImage(
                                'assets/${featureImage[index]}',
                              ),
                            ),
                          ),
                          footer: Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: GridTileBar(
                                title: AutoSizeText(
                              "${featureText[index]}",
                              style: TextStyle(
                                  fontSize: 17.5,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              minFontSize: 17,
                              textAlign: TextAlign.center,
                            )),
                          ),
                        );
                      })),
              Container(
                height: 20,
                color: Colors.grey[300],
              ),
              SizedBox(
                height: 20,
              ),
              AutoSizeText(
                "piq by ram".toUpperCase(),
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 5),
                textAlign: TextAlign.justify,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                minFontSize: 15,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 137,
                          decoration: BoxDecoration(color: Color(0xFFEDEDED)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AutoSizeText(
                                    "${fixedTextRam}",
                                    style: TextStyle(
                                        fontSize: 17.5,
                                        fontWeight: FontWeight.w400),
                                    minFontSize: 17,
                                    maxLines: 3,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  AutoSizeText(
                                    "${featureRam[index]}",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600),
                                    minFontSize: 20,
                                    maxLines: 3,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
