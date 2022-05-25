import 'package:auto_size_text/auto_size_text.dart';
import 'package:da_techno_app/screen/product_list/Furnitures/Sofa/sofa_category_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:draggable_home/draggable_home.dart';
// import 'camera_preview.dart';

class FurnitureCategoryView extends StatefulWidget {
  const FurnitureCategoryView({Key? key}) : super(key: key);

  @override
  State<FurnitureCategoryView> createState() => _FurnitureCategoryViewState();
}

class _FurnitureCategoryViewState extends State<FurnitureCategoryView> {
  int categoryCount = 6;
  int brandCount = 5;
  // List<AssetImage> categoryImage = [
  //   AssetImage('assets/779@1x.webp'),
  // ];

  List<String> categoryImage = [
    'sofa.jpg',
    'tables.jpg',
    'storage.jpg',
    'beds.jpg',
    'kids.jpg',
    'components.jpg',
  ];
  List<String> featuredBrand = [
    'f_banner1.jpg',
    'f_banner2.jpg',
    'f_banner3.jpg',
    'f_banner4.jpg',
    'f_banner5.jpg',
  ];

  List<String> catgoryName = [
    'Sofa and Armchairs',
    'Tables andChairs',
    'Sytem and Storage',
    'Sleeping Area',
    'Kids Furniture',
    'Furniture Componnents',
    ''
  ];

  AssetImage placeHolderImage = AssetImage('assets/placeholder_image.jpg');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Furniture",
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
      body: SafeArea(
        //     child: DraggableHome(
        //   headerExpandedHeight: 0.2,
        //   stretchMaxHeight: 0.25,
        //   alwaysShowTitle: false,
        //   curvedBodyRadius: 0,
        //   // curvedBodyRadius: 20,
        //   leading: const Icon(
        //     Icons.arrow_back_ios,
        //     color: Colors.black,
        //   ),

        //   title: const Text(
        //     "Furniture",
        //     style: TextStyle(color: Colors.black),
        //   ),
        //   actions: [
        //     IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        //   ],
        //   headerWidget: headerWidget(context),
        //   headerBottomBar: headerBottomBarWidget(),
        //   body: [
        //     FadeInImage(
        //         fit: BoxFit.fill,
        //         fadeInDuration: Duration(milliseconds: 2000),
        //         width: MediaQuery.of(context).size.width,
        //         placeholder: AssetImage('assets/placeholder_image.jpg'),
        //         image: AssetImage('assets/download.jpg')),
        //     Container(
        //       width: MediaQuery.of(context).size.width,
        //       height: 24,
        //       color: Color(0xffEDEDED),
        //     ),
        //     Align(
        //       alignment: Alignment.centerLeft,
        //       child: Padding(
        //         padding: const EdgeInsets.all(10.0),
        //         child: AutoSizeText(
        //           'Categories',
        //           style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        //           minFontSize: 18,
        //           overflow: TextOverflow.ellipsis,
        //         ),
        //       ),
        //     ),
        //     listView(),
        //   ],

        //   fullyStretchable: false,
        //   centerTitle: false,
        //   // expandedBody: const CameraPreview(),
        //   backgroundColor: Colors.white,
        //   appBarColor: Colors.white,
        // )
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                FadeInImage(
                    fit: BoxFit.fill,
                    fadeInDuration: Duration(milliseconds: 2000),
                    width: MediaQuery.of(context).size.width,
                    placeholder: AssetImage('assets/placeholder_image.jpg'),
                    image: AssetImage('assets/download.jpg')),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 24,
                  color: Color(0xffEDEDED),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: AutoSizeText(
                    'Categories',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    minFontSize: 18,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: categoryCount,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.750,
                      //     50 / MediaQuery.of(context).size.height * 1,
                      crossAxisCount: 2,
                      // crossAxisSpacing: 0,
                      mainAxisSpacing: 20,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SofaCategoryView()),
                          );
                        },
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 181,
                              height: 254,
                              child: Neumorphic(
                                style: NeumorphicStyle(
                                    shape: NeumorphicShape.concave,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(30)),
                                    // depth: 2.5,
                                    intensity: 1,
                                    shadowDarkColor: Colors.grey[400],
                                    shadowLightColor: Colors.grey[50],
                                    // lightSource: LightSource.top,
                                    color: Colors.white),
                                child: FadeInImage(
                                    placeholder: placeHolderImage,
                                    image: AssetImage(
                                        'assets/${categoryImage[index]}')),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            AutoSizeText(
                              '${catgoryName[index]}',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                              minFontSize: 18,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      );
                    }),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 24,
                  color: Color(0xffEDEDED),
                ),
                FadeInImage(
                    fit: BoxFit.fill,
                    fadeInDuration: Duration(milliseconds: 2000),
                    width: MediaQuery.of(context).size.width,
                    placeholder: AssetImage('assets/placeholder_image.jpg'),
                    image: AssetImage('assets/furniture_banner.jpg')),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 24,
                  color: Color(0xffEDEDED),
                ),
                Container(
                  height: 350,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: AutoSizeText(
                            'Featured Brands',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                            minFontSize: 18,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: AlwaysScrollableScrollPhysics(),
                            itemCount: brandCount,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 181,
                                  height: 254,
                                  child: Neumorphic(
                                    style: NeumorphicStyle(
                                        shape: NeumorphicShape.concave,
                                        boxShape: NeumorphicBoxShape.roundRect(
                                            BorderRadius.circular(30)),
                                        // depth: 2.5,
                                        intensity: 1,
                                        shadowDarkColor: Colors.grey[400],
                                        shadowLightColor: Colors.grey[50],
                                        // lightSource: LightSource.top,
                                        color: Colors.white),
                                    child: FadeInImage(
                                        placeholder: placeHolderImage,
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                          'assets/${featuredBrand[index]}',
                                        )),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }

  // Row headerBottomBarWidget() {
  //   return Row(
  //     mainAxisSize: MainAxisSize.max,
  //     mainAxisAlignment: MainAxisAlignment.end,
  //     crossAxisAlignment: CrossAxisAlignment.center,
  //     children: const [
  //       Icon(
  //         Icons.settings,
  //         color: Colors.white,
  //       ),
  //     ],
  //   );
  // }

  // Widget headerWidget(BuildContext context) {
  //   return Container(
  //     color: Colors.blue,
  //     child: Center(
  //       child: Text(
  //         "Furnitures",
  //         style: Theme.of(context)
  //             .textTheme
  //             .headline2!
  //             .copyWith(color: Colors.black),
  //       ),
  //     ),
  //   );
  // }

  // GridView listView() {
  //   return GridView.builder(
  //       shrinkWrap: true,
  //       physics: BouncingScrollPhysics(),
  //       itemCount: categoryCount,
  //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //         childAspectRatio: 0.750,
  //         //     50 / MediaQuery.of(context).size.height * 1,
  //         crossAxisCount: 2,
  //         // crossAxisSpacing: 0,
  //         // mainAxisSpacing: 20,
  //       ),
  //       itemBuilder: (context, index) {
  //         return Column(
  //           children: [
  //             Container(
  //               width: 181,
  //               height: 254,
  //               child: Neumorphic(
  //                 style: NeumorphicStyle(
  //                     shape: NeumorphicShape.concave,
  //                     boxShape: NeumorphicBoxShape.roundRect(
  //                         BorderRadius.circular(30)),
  //                     // depth: 2.5,
  //                     intensity: 1,
  //                     shadowDarkColor: Colors.grey[400],
  //                     shadowLightColor: Colors.grey[50],
  //                     // lightSource: LightSource.top,
  //                     color: Colors.white),
  //                 child: FadeInImage(
  //                     placeholder: placeHolderImage,
  //                     image: AssetImage('assets/${categoryImage[index]}')),
  //               ),
  //             ),
  //             Text("data")
  //           ],
  //         );
  //       });
  // }
}
