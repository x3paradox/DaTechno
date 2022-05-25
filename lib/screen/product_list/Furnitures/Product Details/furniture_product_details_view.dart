import 'package:auto_size_text/auto_size_text.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fradio_nullsafety/fradio_nullsafety.dart';
import 'package:quantity_input/quantity_input.dart';
// import 'package:screen_ui/eletronic.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:flutter_cube/flutter_cube.dart';

import '../../../../views/ProductImageListView/product_imagelist_view.dart';
// import 'package:flick_video_player/flick_video_player.dart';
// import 'package:video_player/video_player.dart';

class FurnitureProductDetailsView extends StatefulWidget {
  const FurnitureProductDetailsView({Key? key}) : super(key: key);

  @override
  State<FurnitureProductDetailsView> createState() =>
      _FurnitureProductDetailsViewState();
}

class _FurnitureProductDetailsViewState
    extends State<FurnitureProductDetailsView> {
  int simpleIntInput = 1;
  int steppedIntInput = 1;
  double simpleDoubleInput = 1;
  double steppedDoubleInput = 1;
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];
  int groupValue_5 = 0;

  final CarouselController _controller = CarouselController();
  int _current = 0;
  final List<String> list = [
    'bed_1.jpg',
    'bed_2.jpg',
    'bed_3.jpg',
    'bed_4.jpg',
    'bed_5.jpg',
    'bed_6.jpg',
  ];

  final List<ImageProvider> _imageProviders = [
    Image.asset("assets/bed_1.jpg").image,
    Image.asset("assets/bed_2.jpg").image,
    Image.asset("assets/bed_3.jpg").image,
    Image.asset("assets/bed_4.jpg").image,
    Image.asset("assets/bed_5.jpg").image,
    Image.asset("assets/bed_6.jpg").image,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      MultiImageProvider multiImageProvider =
                          MultiImageProvider(_imageProviders);
                      showImageViewerPager(context, multiImageProvider);
                      // Cube(
                      //   onSceneCreated: (Scene scene) {
                      //     scene.world.add(Object(fileName: 'assets/bed_6.jpg'));
                      //   },
                      // );
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => ProductImageListView()),
                      // );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: 269,
                          viewportFraction: 1,
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
                                // margin: EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(),
                                child: FadeInImage(
                                    fit: BoxFit.cover,
                                    fadeInDuration:
                                        Duration(milliseconds: 5000),
                                    width: MediaQuery.of(context).size.width,
                                    placeholder: AssetImage(
                                        'assets/placeholder_image.jpg'),
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
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          maxRadius: 15,
                          minRadius: 15,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              maxRadius: 15,
                              minRadius: 15,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.favorite_border_outlined,
                                size: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          CircleAvatar(
                            maxRadius: 15,
                            minRadius: 15,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.share,
                              size: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 5,
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
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: AutoSizeText(
                  ' Upholstered Bed With Stroage(King Size,Indigo Blue)',
                  style: TextStyle(fontSize: 17.5, fontWeight: FontWeight.w500),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  minFontSize: 17,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: RatingBar.builder(
                  initialRating: 5,
                  minRating: 0.5,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 20,
                  // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    // size: 5,
                    color: Colors.orange,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 5,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[300]),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: AutoSizeText(
                  ' Finish',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17.5),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  minFontSize: 17,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: DefaultTabController(
                  length: 2,
                  child: ButtonsTabBar(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    contentPadding: EdgeInsets.zero,
                    borderWidth: 1,
                    borderColor: Color(0xFFFF7575),
                    height: 150,
                    // controller: widget.tabController,

                    unselectedBackgroundColor: Colors.white,
                    unselectedLabelStyle: TextStyle(color: Colors.black),
                    // labelStyle: TextStyle(
                    //     color: Colors.white, fontWeight: FontWeight.bold),
                    tabs: [
                      Tab(
                        child: Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                padding: EdgeInsets.all(8),

                                // color: Colors.black,
                                height: 100,
                                width: 120,
                                // width: ,
                                child: Image(
                                  fit: BoxFit.contain,
                                  image: AssetImage('assets/small_bed.jpg'),
                                )),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                              height: 42,
                              width: 100,

                              // color: Colors.black,
                              child: Center(
                                  child: Column(
                                children: [
                                  AutoSizeText(
                                    'Indigo Blue',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                    maxFontSize: 15,
                                    minFontSize: 15,
                                  ),
                                  AutoSizeText(
                                    '37,989',
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                    maxFontSize: 15,
                                    minFontSize: 15,
                                  )
                                ],
                              )),
                            ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                padding: EdgeInsets.all(8),

                                // color: Colors.black,
                                height: 100,
                                width: 120,
                                // width: ,
                                child: Image(
                                  fit: BoxFit.contain,
                                  image: AssetImage('assets/small_bed1.jpg'),
                                )),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(0),
                              ),
                              height: 42,
                              width: 100,

                              // color: Colors.black,
                              child: Center(
                                  child: Column(
                                children: [
                                  AutoSizeText(
                                    'Chestnut Brown',
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                    maxFontSize: 15,
                                    minFontSize: 15,
                                  ),
                                  AutoSizeText(
                                    '37,989',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                    maxFontSize: 15,
                                    minFontSize: 15,
                                  )
                                ],
                              )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 5,
                color: Colors.grey[300],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: AutoSizeText(
                  'Size',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17.5),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  minFontSize: 17,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 9),
                        FRadio(
                          enable: true,
                          corner: FRadioCorner(
                            leftTopCorner: 6,
                            leftBottomCorner: 6,
                            rightTopCorner: 6,
                            rightBottomCorner: 6,
                          ),
                          width: 150,
                          height: 90,
                          value: 0,
                          groupValue: groupValue_5,
                          onChanged: (value) {
                            setState(() {
                              groupValue_5 = value as int;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xffEDEDED),
                                border: Border.all(color: Color(0xff7B7B7B))),
                            child: Column(children: [
                              Container(
                                padding: EdgeInsets.all(8),

                                // color: Colors.black,
                                height: 50,
                                width: 120,
                                // width: ,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: AutoSizeText(
                                        'Queen Size',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                        minFontSize: 10,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Expanded(
                                      child: AutoSizeText(
                                        '',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                        minFontSize: 10,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 38,
                                width: 145,
                                color: Colors.white,
                                // color: Colors.black,
                                child: Center(
                                    child: Column(
                                  children: [
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          '66,999',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                              ),
                            ]),
                          ),
                          hoverChild: const Text("Hover2"),
                          selectedChild: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffFF7575))),
                            child: Column(children: [
                              Container(
                                padding: EdgeInsets.all(8),

                                // color: Colors.black,
                                height: 50,
                                width: 120,
                                // width: ,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: AutoSizeText(
                                        'Queen Size',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                        minFontSize: 10,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    // Expanded(
                                    //   child: AutoSizeText(
                                    //     '1288 GB Ram',
                                    //     style: TextStyle(
                                    //         fontSize: 14,
                                    //         fontWeight: FontWeight.bold),
                                    //     minFontSize: 10,
                                    //     maxLines: 1,
                                    //     overflow: TextOverflow.ellipsis,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 38,
                                width: 145,
                                color: Colors.white,
                                // color: Colors.black,
                                child: Center(
                                    child: Column(
                                  children: [
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          '66,999',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                              ),
                            ]),
                          ),
                          hasSpace: false,
                          toggleable: true,
                          selectedColor: Color(0xffffebe0),
                          border: 1.5,
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        const SizedBox(height: 9),
                        FRadio(
                          corner: FRadioCorner(
                              leftTopCorner: 6,
                              leftBottomCorner: 6,
                              rightTopCorner: 6,
                              rightBottomCorner: 6),
                          width: 150,
                          height: 90,
                          value: 2,
                          groupValue: groupValue_5,
                          onChanged: (value) {
                            setState(() {
                              groupValue_5 = value as int;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xffEDEDED),
                                border: Border.all(color: Color(0xff7B7B7B))),
                            child: Column(children: [
                              Container(
                                padding: EdgeInsets.all(8),

                                // color: Colors.black,
                                height: 50,
                                width: 120,
                                // width: ,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: AutoSizeText(
                                        'King Size',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                        minFontSize: 10,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 38,
                                width: 145,
                                color: Colors.white,
                                // color: Colors.black,
                                child: Center(
                                    child: Column(
                                  children: [
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          '66,999',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    // Expanded(
                                    //   child: Text(
                                    //     'In Stock',
                                    //     style: TextStyle(color: Colors.green),
                                    //   ),
                                    // )
                                  ],
                                )),
                              ),
                            ]),
                          ),
                          hoverChild: const Text("Hover2"),
                          selectedChild: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffFF7575))),
                            child: Column(children: [
                              Container(
                                padding: EdgeInsets.all(8),

                                // color: Colors.black,
                                height: 50,
                                width: 120,
                                // width: ,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: AutoSizeText(
                                        'King Size',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                        minFontSize: 10,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 38,
                                width: 145,
                                color: Colors.white,
                                // color: Colors.black,
                                child: Center(
                                    child: Column(
                                  children: [
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          '66,999',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    //  Expanded(
                                    //     child: Text(
                                    //       'In Stock',
                                    //       style: TextStyle(color: Colors.green),
                                    //     ) ,
                                  ],
                                )),
                              ),
                            ]),
                          ),
                          hasSpace: false,
                          toggleable: true,
                          selectedColor: Color(0xffffebe0),
                          border: 1.5,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 5,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[300],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: 10, left: 10, top: 10, bottom: 10),
                child: Row(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          '\u{20B9}37,989',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 17.5),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          minFontSize: 17,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        AutoSizeText(
                          '\u{20B9}49,999',
                          // style: TextStyle(
                          //     decoration: TextDecoration.lineThrough,
                          //     color: Color.fromARGB(255, 109, 107, 107)),
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 17.5,
                            color: Color(0xff727272),
                            decoration: TextDecoration.lineThrough,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          minFontSize: 17,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        AutoSizeText(
                          '24% off',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17.5,
                              color: Color(0xff17A700)),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          minFontSize: 17,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 5,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[300],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: AutoSizeText(
                  ' Special Offers:',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 17.5,
                    color: Color(0xffFF4E00),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  minFontSize: 17,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Container(
                  height: 100,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: ((context, index) => Container(
                          width: 200,
                          // padding: EdgeInsets.symmetric(vertical: 20),
                          child: Card(
                            margin: EdgeInsets.all(5),
                            elevation: 3,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 3, horizontal: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Summer Sale',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  // SizedBox(
                                  //   height: 6,
                                  // ),
                                  Text(
                                    'Apply cupon SUMMER22 & Get 20% off (price include)',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  // SizedBox(
                                  //   height: 6,
                                  // ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 5,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[300],
              ),
              SizedBox(
                height: 10,
              ),
              // Row(mainAxisSize: MainAxisSize.min, children: [

              //   Text('    Quantity'),
              //   Builder(builder: (context) {
              //     return Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: QuantityInput(
              //           iconColor: Colors.black,
              //           value: simpleIntInput,
              //           onChanged: (value) => setState(() => simpleIntInput =
              //               int.parse(value.replaceAll(',', '')))),
              //     );
              //   }),
              //   // Text('Value: $simpleIntInput',
              //   //     style: TextStyle(
              //   //         color: Colors.black, fontWeight: FontWeight.bold))
              //   Text('  (incl.of all taxes)'),
              // ]),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      'Quantity',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 17.5),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      minFontSize: 17,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    QuantityInput(
                        // buttonColor: Colors.transparent,
                        iconColor: Colors.black,
                        buttonColor: Colors.white,
                        // label: 'Int input with 3 step',
                        value: steppedIntInput,
                        step: 1,
                        onChanged: (value) => setState(() => steppedIntInput =
                            int.parse(value.replaceAll(',', '')))),
                    Text(' (incl.of all taxes)')
                  ],
                ),
              ),
              // Text('Value: $steppedIntInput',
              //     style: TextStyle(
              //         color: Colors.black, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),

              SimpleShadow(
                opacity: 0.6,
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffff4e00),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      // shape: BoxShape.circle,
                    ),
                    child: CupertinoButton(
                      child: const Text(
                        'BUY NOW',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) =>
                        //           const order()),
                        // );
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SimpleShadow(
                opacity: 0.6,
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 7, 7, 7),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      // shape: BoxShape.circle,
                    ),
                    child: CupertinoButton(
                      child: const Text(
                        'ADD TO  CART',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const Electronic()),
                        // );
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
