import 'package:da_techno_app/screen/add_to_cart/add_to_cart_process_view.dart';
import 'package:da_techno_app/screen/home/wishlist_view/wishlist_view.dart';
import 'package:flutter/material.dart';
import 'package:snapping_sheet/snapping_sheet.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:lottie/lottie.dart';
import 'package:fradio_nullsafety/fradio_nullsafety.dart';
import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_size_text/auto_size_text.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SimpleSnappingSheet(tabController!)),
    );
  }
}

class SimpleSnappingSheet extends StatefulWidget {
  TabController tabController;
  SimpleSnappingSheet(this.tabController);

  @override
  State<SimpleSnappingSheet> createState() => _SimpleSnappingSheetState();
}

class _SimpleSnappingSheetState extends State<SimpleSnappingSheet> {
  int groupValue_5 = 0;

  @override
  Widget build(BuildContext context) {
    final ScrollController listViewController = new ScrollController();
    return SnappingSheet(
      child: Background(widget.tabController),
      lockOverflowDrag: true,
      snappingPositions: [
        SnappingPosition.factor(
          positionFactor: 0.0,
          snappingCurve: Curves.easeOutExpo,
          snappingDuration: Duration(seconds: 1),
          grabbingContentOffset: GrabbingContentOffset.top,
        ),
        SnappingPosition.factor(
          snappingCurve: Curves.elasticOut,
          snappingDuration: Duration(milliseconds: 1750),
          positionFactor: 0.5,
        ),
        SnappingPosition.factor(
          grabbingContentOffset: GrabbingContentOffset.bottom,
          snappingCurve: Curves.easeInExpo,
          snappingDuration: Duration(seconds: 1),
          positionFactor: 0.9,
        ),
      ],

      grabbing: GrabbingWidget(),
      grabbingHeight: 150,
      sheetAbove: null,
      //slider contents
      sheetBelow: SnappingSheetContent(
        draggable: true,
        childScrollController: listViewController,
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Colors:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  DefaultTabController(
                    length: 2,
                    child: ButtonsTabBar(
                      decoration: BoxDecoration(
                        color: Color(0xFFFFEBE0),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      contentPadding: EdgeInsets.zero,
                      borderWidth: 1,
                      borderColor: Color(0xFFFF7575),
                      height: 150,
                      controller: widget.tabController,

                      unselectedBackgroundColor: Color(0xFFEDEDED),
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
                                  width: 100,
                                  // width: ,
                                  child: Image(
                                    fit: BoxFit.contain,
                                    image: AssetImage('assets/mobile.png'),
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
                                    child: Text(
                                  'Black',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.black),
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
                                  width: 100,
                                  // width: ,
                                  child: Image(
                                    fit: BoxFit.contain,
                                    image: AssetImage('assets/mobile.png'),
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
                                    child: Text(
                                  'Red',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.black),
                                )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Size:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                                rightBottomCorner: 6),
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
                                          '8 GB Ram',
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
                                          '1288 GB Ram',
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
                                        child: Text(
                                          '66,999',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'In Stock',
                                          style: TextStyle(color: Colors.green),
                                        ),
                                      )
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
                                          '8 GB Ram',
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
                                          '1288 GB Ram',
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
                                        child: Text(
                                          '66,999',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'In Stock',
                                          style: TextStyle(color: Colors.green),
                                        ),
                                      )
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
                      const SizedBox(width: 56),
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
                                          '8 GB Ram',
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
                                          '1288 GB Ram',
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
                                        child: Text(
                                          '66,999',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'In Stock',
                                          style: TextStyle(color: Colors.green),
                                        ),
                                      )
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
                                          '8 GB Ram',
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
                                          '1288 GB Ram',
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
                                        child: Text(
                                          '66,999',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'In Stock',
                                          style: TextStyle(color: Colors.green),
                                        ),
                                      )
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
                  SizedBox(
                    height: 5,
                  ),
                  Divider(
                    endIndent: 0,
                    thickness: 2,
                    color: Colors.black26,
                    // height: 10,
                  ),
                  Row(
                    children: [
                      Image(image: AssetImage('assets/Offer.png')),
                      Text(
                        'Offers:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
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
                                      'No Cost EMi',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    // SizedBox(
                                    //   height: 6,
                                    // ),
                                    Text(
                                      'Upto 1234.56 EMI Interest savings on Selected Cards',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    // SizedBox(
                                    //   height: 6,
                                    // ),
                                    Text(
                                      '1 offer',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )),
                    ),
                  ),
                  Divider(
                    endIndent: 0,
                    thickness: 2,
                    color: Colors.black26,
                    // height: 10,
                  ),
                  Text(
                    'Features and Details:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  BulletedList(
                    bulletColor: Colors.black54,
                    style: TextStyle(color: Colors.black),
                    listItems: [
                      'Camera: 48MP Main Camera with Sony IMX 789 Lens (OIS enabled), 50MP Ultra-wide angle camera & 8MP Tele photo lens ',
                      'Front (Selfie) Camera: 32MP',
                      'Flash: Dual LED Camera Features: Hasselblad Camera for Mobile, Nightscape, Ultra HDR, Smart Scene Recognition, Portrait Mode, Pro Mode, Panorama Mode, Tilt-Shift mode, Long Exposure Mode, 150° Wide angle Mode, Dual-View Video, Movie Mode, Xpan Mode, Filters, Super Stable, Video Nightscape, Video HDR, Video Portrait, Focus Tracking, Timelapse',
                      'Display: 6.7 Inches; 120 Hz QHD+ Fluid AMOLED with LTPO; Resolution: 3216 x 1440; Aspect Ratio: 20:9 ',
                      'Display Features: Nature tone display, Video colour enhancer, Colour personalization, Colour vision enhancement, Auto brightness, Manual brightness, Screen colour temperature, Bright HDR video mode, Night Mode, Multi-brightness colour calibration, Vibrant Colour Effect Pro, Ultra high resolution video ',
                      'Operating System: Oxygen OS based on Android 12 ',
                      'Processor: Qualcomm Snapdragon 8 Gen 1 Battery & Charging: 5000 mAh with 80W SuperVOOC'
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//Main Screen
class Background extends StatelessWidget {
  TabController tabController;
  Background(this.tabController);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.zero,
      // alignment: Alignment.topCenter,
      color: Colors.grey[200],
      child: Stack(
        children: [
          TabBarView(
            controller: tabController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CarouselSlider(
                  options: CarouselOptions(
                    disableCenter: true,
                    autoPlay: true,
                    height: MediaQuery.of(context).size.height * 0.9,
                    viewportFraction: 1.0,
                    // enlargeCenterPage: false,
                    // autoPlay: false,
                  ),
                  items: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image(
                        // fit: BoxFit.,
                        image: AssetImage('assets/OnePlus-10-Pro-3.png'),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image(
                        image: AssetImage('assets/onep.jpeg'),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image(
                        image: AssetImage('assets/plusone.jpeg'),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image(
                        image: AssetImage('assets/ones.jpeg'),
                      ),
                    )
                  ],
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height * 0.9,
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  // autoPlay: false,
                ),
                items: [
                  Image(
                    image: AssetImage('assets/8112022-04-26 17_10_06.jpg'),
                  ),
                  Image(
                    image: AssetImage('assets/8112022-04-26 17_10_06.jpg'),
                  ),
                  Image(
                    image: AssetImage('assets/8112022-04-26 17_10_06.jpg'),
                  ),
                  Image(
                    image: AssetImage('assets/602022-04-26 17_15_24.jpg'),
                  )
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            width: MediaQuery.of(context).size.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SimpleShadow(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[50],
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SimpleShadow(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[50],
                    child: Icon(
                      Icons.share,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.7,
            left: MediaQuery.of(context).size.width * 0.03,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WishListPage()),
                );
              },
              child: SimpleShadow(
                child: CircleAvatar(
                    backgroundColor: Colors.grey[50],
                    child: Lottie.asset('assets/fav.json')
                    // Icon(
                    //   Icons.favorite,
                    //   color: Colors.black,
                    // ),
                    ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

//slider head
class GrabbingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        boxShadow: [
          BoxShadow(blurRadius: 25, color: Colors.black.withOpacity(0.2)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(top: 20),
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Text(
                  'One Plus 10 Pro 5g(Emerald Forest, 8GB RAM, 128GB Storage)',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IntrinsicWidth(
                        child: Container(
                          // width: MediaQuery.of(context).size.width * 0.5,
                          child: RatingBar.builder(
                            initialRating: 3,
                            minRating: 0.5,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 25,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              // size: 5,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFFEC9F05), Color(0XFFFF4E00)],
                          ),
                        ),
                        child: CupertinoButton(
                          child: const Text(
                            'Add to Cart',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddToCartProcessView()),
                            );
                          },
                        ),
                      )
                      // TextButton(
                      //   style: TextButton.styleFrom(
                      //     backgroundColor: Colors.transparent,
                      //   ),
                      //   onPressed: () {},
                      //   child: Container(
                      //     padding: EdgeInsets.all(10),
                      //     decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(12.0),
                      //       gradient: LinearGradient(
                      //         begin: Alignment.topCenter,
                      //         end: Alignment.bottomCenter,
                      //         colors: [Color(0xFFEC9F05), Color(0XFFFF4E00)],
                      //       ),
                      //     ),
                      //     child: Text(
                      //       'Add to Cart',
                      //       style: TextStyle(color: Colors.white),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
            // color: Colors.grey[200],
            height: 115,
            margin: EdgeInsets.all(15).copyWith(top: 0, bottom: 0),
          )
        ],
      ),
    );
  }
}


  //  ListView.builder(
                //   controller: listViewController,
                //   itemBuilder: (context, index) {
                //     return Container(
                //       margin: EdgeInsets.all(15),
                //       color: Colors.green[200],
                //       height: 100,
                //       child: Center(
                //         child: Text(index.toString()),
                //       ),
                //     );
                //   },
                // ),