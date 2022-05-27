import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

class AppliancesCategoryListView extends StatefulWidget {
  const AppliancesCategoryListView({Key? key}) : super(key: key);

  @override
  State<AppliancesCategoryListView> createState() =>
      _AppliancesCategoryListViewState();
}

class _AppliancesCategoryListViewState
    extends State<AppliancesCategoryListView> {
  List<String> image = [
    'pngaaa.com-2167725.png',
    'apple-black-logo.png',
    'pngaaa.com-2167725.png',
    'apple-black-logo.png',
    'pngaaa.com-2167725.png',
    'apple-black-logo.png'
  ];
  List<String> lists = [
    'washing_machine.jpg',
    '4KTV.png',
    'washing_machine.jpg',
    '4KTV.png',
    'washing_machine.jpg',
    '4KTV.png'
  ];
  List<String> bestSeller = [
    '4KTV.png',
    '4KTV.png',
    '4KTV.png',
    '4KTV.png',
  ];
  List<String> bestsellerText = [
    'SONY',
    'ONEPLUS',
    'LG',
    'MI',
  ];
  List<String> categoryName = [
    'Washing Machine',
    '4K TVs',
    'Washing Machine',
    '4K TVs',
    'Washing Machine',
    '4K TVs',
    'Washing Machine',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    SimpleShadow(
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
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Fashion',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffffb8b8),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SimpleShadow(
                          child: Container(
                            height: 20,
                            width: 200,
                            child: Center(child: Text('TVs and Appliances')),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, left: 20, right: 20, bottom: 20),
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 6,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 10 / 8,
                            //     50 / MediaQuery.of(context).size.height * 1,
                            crossAxisCount: 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                          ),
                          itemBuilder: (context, index) {
                            return GridTile(
                              // key: ValueKey(_products[index]['id']),
                              child: Container(
                                width: 166.46,
                                height: 163.49,
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
                                  height: 113.95,
                                  fit: BoxFit.fill,
                                  fadeInDuration: Duration(milliseconds: 5000),
                                  width: 165.48,
                                  placeholder: AssetImage(
                                      'assets/placeholder_image.jpg'),
                                  image: AssetImage(
                                    'assets/${lists[index]}',
                                  ),
                                ),
                              ),
                              footer: Padding(
                                padding: const EdgeInsets.only(
                                    top: 30, left: 10, right: 10),
                                child: GridTileBar(
                                    title: AutoSizeText(
                                  "${categoryName[index]}",
                                  style: TextStyle(color: Colors.black),
                                  textAlign: TextAlign.center,
                                  minFontSize: 12,
                                )),
                              ),
                            );
                            // return Padding(
                            //   padding: const EdgeInsets.all(4.0),
                            //   child: Container(
                            //     // height: ,
                            //     // clipBehavior: Clip.antiAlias,
                            //     decoration: BoxDecoration(
                            //         color: Colors.white,
                            //         borderRadius: BorderRadius.circular(15)),
                            //     child: Column(
                            //       children: [
                            //         // Image(
                            //         //   image:
                            //         //       AssetImage('assets/${list[index]}'),
                            //         // ),
                            //         FadeInImage(
                            //           height: 99,
                            //           fit: BoxFit.cover,
                            //           fadeInDuration:
                            //               Duration(milliseconds: 5000),
                            //           width: 76,
                            //           placeholder: AssetImage(
                            //               'assets/placeholder_image.jpg'),
                            //           image: AssetImage(
                            //             'assets/${lists[index]}',
                            //           ),
                            //         ),
                            //         Text('ABCDE'),
                            //       ],
                            //     ),
                            //   ),
                            // );
                          },
                        ),
                      ),
                      // GridView.builder(
                      //     gridDelegate:
                      //         SliverGridDelegateWithFixedCrossAxisCount(
                      //             crossAxisCount: 2,
                      //             // childAspectRatio: 0.5 / 1,

                      //             crossAxisSpacing: 10,
                      //             mainAxisSpacing: 15),
                      //     itemCount: 6,
                      //     itemBuilder: (BuildContext ctx, index) {
                      //       return Padding(
                      //         padding: const EdgeInsets.only(
                      //             left: 10, right: 10, bottom: 0, top: 0),
                      //         child: SimpleShadow(
                      //           child: Flexible(
                      //             child: Container(
                      //               child: Column(
                      //                 crossAxisAlignment:
                      //                     CrossAxisAlignment.start,
                      //                 children: [
                      //                   Expanded(
                      //                     child: Image(
                      //                         image: AssetImage(
                      //                             'assets/${list[index]}')),
                      //                   ),
                      //                   Text('Abcd')
                      //                 ],
                      //               ),
                      //               alignment: Alignment.center,
                      //               decoration: BoxDecoration(
                      //                   color: Colors.white,
                      //                   borderRadius:
                      //                       BorderRadius.circular(15)),
                      //             ),
                      //           ),
                      //         ),
                      //       );
                      //     }), // GridView.builder(gridDelegate: gridDelegate, itemBuilder: itemBuilder)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 200,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  clipBehavior: Clip.antiAlias,
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/summer-sale-special-offer-banner-vector-25170371.jpg',
                      )),
                ),
              ),
              Container(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('Latest Launches in TVs and Appliances'),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider(
                  options: CarouselOptions(
                      height: 200,
                      enableInfiniteScroll: false,
                      // aspectRatio: 16 / 9,
                      // viewportFraction: 1,
                      // autoPlay: true,
                      // autoPlayInterval: Duration(seconds: 5),
                      viewportFraction: 1,
                      autoPlay: true),
                  items: lists
                      .map((item) => Container(
                            margin: const EdgeInsets.all(15.0),
                            // margin: EdgeInsets.all(5),
                            width: MediaQuery.of(context).size.width,

                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            clipBehavior: Clip.antiAlias,
                            child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/$item'),
                            ),
                          ))
                      .toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('Best Sellers in TVs and Appliances'),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 10 / 8,
                    //     50 / MediaQuery.of(context).size.height * 1,
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    return GridTile(
                      // key: ValueKey(_products[index]['id']),
                      child: Container(
                        width: 166.46,
                        height: 163.49,
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
                      header: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12)),
                            child: FadeInImage(
                              height: 113.95,
                              fit: BoxFit.fill,
                              fadeInDuration: Duration(milliseconds: 5000),
                              width: MediaQuery.of(context).size.width,
                              placeholder:
                                  AssetImage('assets/placeholder_image.jpg'),
                              image: AssetImage(
                                'assets/${bestSeller[index]}',
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: -1,
                              left: 50,
                              child: Container(
                                  width: 106.71,
                                  height: 26.15,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border:
                                          Border.all(color: Color(0xff0069A4))),
                                  child: Center(
                                      child: Text("${bestsellerText[index]}"))))
                        ],
                      ),
                      footer: GridTileBar(
                          title: AutoSizeText(
                        "${categoryName[index]}",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.center,
                        minFontSize: 12,
                      )),
                    );
                    // return Column(
                    //   children: [
                    //     Stack(
                    //       children: [
                    //         FittedBox(
                    //           child: Container(
                    //             height: 150,
                    //             width: 180,
                    //             decoration: BoxDecoration(
                    //               image: DecorationImage(
                    //                 fit: BoxFit.scaleDown,
                    //                 image: AssetImage(
                    //                   'assets/${lists[index]}',
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //         // Image(
                    //         //   fit: BoxFit.fitHeight,
                    //         //   image: AssetImage(
                    //         //     'assets/${list[index]}',
                    //         //   ),
                    //         // ),
                    //         Positioned(
                    //           top: 120,
                    //           right: 70,
                    //           child: Text('ABCD'),
                    //         ),
                    //       ],
                    //     ),
                    //     SizedBox(
                    //       height: 10,
                    //     )
                    //   ],
                    // );
                    // Padding(
                    //   padding: const EdgeInsets.all(4.0),
                    //   child: Expanded(
                    //     child: Container(
                    //       // height: ,
                    //       clipBehavior: Clip.antiAlias,
                    //       decoration: BoxDecoration(
                    //           color: Colors.white,
                    //           borderRadius: BorderRadius.circular(15)),
                    //       child: Column(
                    //         children: [
                    //           Image(
                    //             image: AssetImage('assets/${list[index]}'),
                    //           ),
                    //           Text('ABCDE'),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('Featured Brands'),
              ),
              Container(
                // height: 70,
                height: 80,

                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20, top: 0),
                      child: SimpleShadow(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          height: 50,
                          width: 100,
                          // color: Colors.white,
                          child: Container(
                            margin: EdgeInsets.all(10),
                            // height: 10,
                            // width: 50,
                            child: Image(
                              image: AssetImage('assets/${image[index]}'),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
