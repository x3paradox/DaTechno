// import 'package:da_techno/Screens/smart_watches.dart';
import 'package:da_techno_app/screen/product_list/Fashion/ProductDetails/fashion_product_details_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:auto_size_text/auto_size_text.dart';

class FashionProductListViews extends StatefulWidget {
  const FashionProductListViews({Key? key}) : super(key: key);

  @override
  State<FashionProductListViews> createState() =>
      _FashionProductListViewsState();
}

class _FashionProductListViewsState extends State<FashionProductListViews> {
  List<String> labelName = [
    'abcd',
    'dd',
    'cdcdc',
    'abcd',
    'dd',
    'cdcdc',
    'abcd',
    'dd',
    'cdcdc',
    'abcd',
    'dd',
    'cdcdc',
    'abcd',
    'dd',
    'cdcdc',
    'abcd',
    'dd',
    'cdcdc',
    'abcd',
    'dd',
  ];
  int countValue = 2;

  num aspectWidth = 2;

  num aspectHeight = 1;

  changeMode() {
    if (countValue == 2) {
      setState(() {
        countValue = 1;
        aspectWidth = 3;
        aspectHeight = 2;
      });
    } else {
      setState(() {
        countValue = 2;
        aspectWidth = 2;
        aspectHeight = 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "MEN APPAREL",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "40850",
              style: TextStyle(
                  color: Colors.black54, fontWeight: FontWeight.normal),
            ),
          ],
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
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.list,
                        ),
                        Text('Filter'),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        showCupertinoModalPopup(
                            context: context,
                            builder: (context) {
                              return CupertinoActionSheet(
                                title: Text('Sort By'),
                                actions: [
                                  CupertinoActionSheetAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      print(
                                        'Featured',
                                      );
                                    },
                                    child: Text(
                                      'Featured',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 63, 57, 57)),
                                    ),
                                    // isDefaultAction: true,
                                  ),
                                  CupertinoActionSheetAction(
                                    onPressed: () {
                                      setState(() {
                                        labelName
                                          ..sort(((a, b) => b.compareTo(a)));
                                      });
                                      Navigator.pop(context);
                                      print('low to high');
                                    },
                                    child: Text(
                                      'Price: Low to High',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 63, 57, 57)),
                                    ),
                                  ),
                                  CupertinoActionSheetAction(
                                    onPressed: () {
                                      setState(() {
                                        labelName
                                          ..sort(((a, b) => a.compareTo(b)));
                                      });
                                      Navigator.pop(context);
                                      print('hightolow');
                                    },
                                    child: Text(
                                      'Price: High to Low',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 63, 57, 57)),
                                    ),
                                  ),
                                  CupertinoActionSheetAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      print('new');
                                    },
                                    child: Text(
                                      'Newest Arrival',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 63, 57, 57)),
                                    ),
                                  ),
                                  CupertinoActionSheetAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      print('avg cust');
                                    },
                                    child: Text(
                                      'Avg. Customer Review',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 63, 57, 57)),
                                    ),
                                  ),
                                ],
                              );
                            });
                      },
                      child: Row(
                        children: [
                          Icon(Icons.sort_outlined),
                          Text('Sort'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 5,
                color: Color.fromARGB(255, 241, 237, 237),
                width: MediaQuery.of(context).size.width,
              ),
              // SizedBox(
              //   height: 5,
              // ),
              Container(
                // height: 800,
                // width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(15.0),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GridView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          // childAspectRatio: 3 / 2,
                          // childAspectRatio: countValue == 2
                          //     ? MediaQuery.of(context).size.width /
                          //         (MediaQuery.of(context).size.height / 1.4)
                          //     : (aspectWidth / aspectHeight * 1.2),
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 10,
                          mainAxisExtent: 350),
                      children: [
                        Container(
                          width: 180,
                          height: 354.8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 180,
                                height: 235.73,
                                child: Image.asset(
                                  'assets/r_1.jpg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 7.5, right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AutoSizeText(
                                          'RoadSeter',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 18),
                                          minFontSize: 17,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Icon(
                                          FontAwesomeIcons.heart,
                                          size: 20,
                                          color: Colors.black54,
                                        )
                                      ],
                                    ),

                                    AutoSizeText(
                                      'Men Solid Knitted Round Neck ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15.5,
                                          color: Colors.black45),
                                      minFontSize: 15,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    // decoration: TextDecoration.lineThrough,
                                    Row(
                                      children: [
                                        AutoSizeText(
                                          '\u{20B9}499',
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15.5,
                                              color: Colors.black45),
                                          minFontSize: 15,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(
                                          width: 2.5,
                                        ),
                                        AutoSizeText(
                                          '\u{20B9}299',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15.5,
                                          ),
                                          minFontSize: 15,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    AutoSizeText(
                                      '40% OFF',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15.5,
                                          color: Colors.green),
                                      minFontSize: 15,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 354.8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 180,
                                height: 235.73,
                                child: Image.asset(
                                  'assets/r_2.jpg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 7.5, right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AutoSizeText(
                                          'RoadSeter',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 18),
                                          minFontSize: 17,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Icon(
                                          FontAwesomeIcons.heart,
                                          size: 20,
                                          color: Colors.black54,
                                        )
                                      ],
                                    ),

                                    AutoSizeText(
                                      'Men Solid Knitted Round Neck ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15.5,
                                          color: Colors.black45),
                                      minFontSize: 15,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    // decoration: TextDecoration.lineThrough,
                                    Row(
                                      children: [
                                        AutoSizeText(
                                          '\u{20B9}499',
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15.5,
                                              color: Colors.black45),
                                          minFontSize: 15,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(
                                          width: 2.5,
                                        ),
                                        AutoSizeText(
                                          '\u{20B9}299',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15.5,
                                          ),
                                          minFontSize: 15,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),

                                    AutoSizeText(
                                      '40% OFF',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15.5,
                                          color: Colors.green),
                                      minFontSize: 15,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      FashionProductDetailsView()),
                            );
                          },
                          child: Container(
                            width: 180,
                            height: 354.8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 180,
                                  height: 235.73,
                                  child: Image.asset(
                                    'assets/r_11_4.jpg',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 7.5, right: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          AutoSizeText(
                                            'RoadSeter',
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 18),
                                            minFontSize: 17,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Icon(
                                            FontAwesomeIcons.heart,
                                            size: 20,
                                            color: Colors.black54,
                                          )
                                        ],
                                      ),

                                      AutoSizeText(
                                        'Men Solid Knitted Round Neck ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15.5,
                                            color: Colors.black45),
                                        minFontSize: 15,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      // decoration: TextDecoration.lineThrough,
                                      Row(
                                        children: [
                                          AutoSizeText(
                                            '\u{20B9}499',
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 15.5,
                                                color: Colors.black45),
                                            minFontSize: 15,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          SizedBox(
                                            width: 2.5,
                                          ),
                                          AutoSizeText(
                                            '\u{20B9}299',
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15.5,
                                            ),
                                            minFontSize: 15,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),

                                      AutoSizeText(
                                        '40% OFF',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15.5,
                                            color: Colors.green),
                                        minFontSize: 15,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 354.8,
                          child: Column(
                            children: [
                              Container(
                                width: 180,
                                height: 235.73,
                                child: Image.asset(
                                  'assets/r_4.jpg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 7.5, right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AutoSizeText(
                                          'RoadSeter',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 18),
                                          minFontSize: 17,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Icon(
                                          FontAwesomeIcons.heart,
                                          size: 20,
                                          color: Colors.black54,
                                        )
                                      ],
                                    ),

                                    AutoSizeText(
                                      'Men Solid Knitted Round Neck ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15.5,
                                          color: Colors.black45),
                                      minFontSize: 15,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    // decoration: TextDecoration.lineThrough,
                                    Row(
                                      children: [
                                        AutoSizeText(
                                          '\u{20B9}499',
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15.5,
                                              color: Colors.black45),
                                          minFontSize: 15,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(
                                          width: 2.5,
                                        ),
                                        AutoSizeText(
                                          '\u{20B9}299',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15.5,
                                          ),
                                          minFontSize: 15,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    AutoSizeText(
                                      '40% OFF',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15.5,
                                          color: Colors.green),
                                      minFontSize: 15,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 354.8,
                          child: Column(
                            children: [
                              Container(
                                width: 180,
                                height: 235.73,
                                child: Image.asset(
                                  'assets/r_5.jpg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 7.5, right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AutoSizeText(
                                          'RoadSeter',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 18),
                                          minFontSize: 17,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Icon(
                                          FontAwesomeIcons.heart,
                                          size: 20,
                                          color: Colors.black54,
                                        )
                                      ],
                                    ),

                                    AutoSizeText(
                                      'Men Solid Knitted Round Neck ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15.5,
                                          color: Colors.black45),
                                      minFontSize: 15,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    // decoration: TextDecoration.lineThrough,
                                    Row(
                                      children: [
                                        AutoSizeText(
                                          '\u{20B9}499',
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15.5,
                                              color: Colors.black45),
                                          minFontSize: 15,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(
                                          width: 2.5,
                                        ),
                                        AutoSizeText(
                                          '\u{20B9}299',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15.5,
                                          ),
                                          minFontSize: 15,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    AutoSizeText(
                                      '40% OFF',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15.5,
                                          color: Colors.green),
                                      minFontSize: 15,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 354.8,
                          child: Column(
                            children: [
                              Container(
                                width: 180,
                                height: 235.73,
                                child: Image.asset(
                                  'assets/r_6.jpg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 7.5, right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AutoSizeText(
                                          'RoadSeter',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 18),
                                          minFontSize: 17,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Icon(
                                          FontAwesomeIcons.heart,
                                          size: 20,
                                          color: Colors.black54,
                                        )
                                      ],
                                    ),

                                    AutoSizeText(
                                      'Men Solid Knitted Round Neck ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15.5,
                                          color: Colors.black45),
                                      minFontSize: 15,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    // decoration: TextDecoration.lineThrough,
                                    Row(
                                      children: [
                                        AutoSizeText(
                                          '\u{20B9}499',
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15.5,
                                              color: Colors.black45),
                                          minFontSize: 15,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(
                                          width: 2.5,
                                        ),
                                        AutoSizeText(
                                          '\u{20B9}299',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15.5,
                                          ),
                                          minFontSize: 15,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    AutoSizeText(
                                      '40% OFF',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15.5,
                                          color: Colors.green),
                                      minFontSize: 15,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 354.8,
                          child: Column(
                            children: [
                              Container(
                                width: 180,
                                height: 235.73,
                                child: Image.asset(
                                  'assets/r_7.jpg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 7.5, right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AutoSizeText(
                                          'RoadSeter',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 18),
                                          minFontSize: 17,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Icon(
                                          FontAwesomeIcons.heart,
                                          size: 20,
                                          color: Colors.black54,
                                        )
                                      ],
                                    ),

                                    AutoSizeText(
                                      'Men Solid Knitted Round Neck ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15.5,
                                          color: Colors.black45),
                                      minFontSize: 15,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    // decoration: TextDecoration.lineThrough,
                                    Row(
                                      children: [
                                        AutoSizeText(
                                          '\u{20B9}499',
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15.5,
                                              color: Colors.black45),
                                          minFontSize: 15,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(
                                          width: 2.5,
                                        ),
                                        AutoSizeText(
                                          '\u{20B9}299',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15.5,
                                          ),
                                          minFontSize: 15,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    AutoSizeText(
                                      '40% OFF',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15.5,
                                          color: Colors.green),
                                      minFontSize: 15,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 354.8,
                          // color: Colors.white,
                          child: Column(
                            children: [
                              Container(
                                width: 180,
                                height: 235.73,
                                child: Image.asset(
                                  'assets/r_8.jpg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 7.5, right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AutoSizeText(
                                          'RoadSeter',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 18),
                                          minFontSize: 17,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Icon(
                                          FontAwesomeIcons.heart,
                                          size: 20,
                                          color: Colors.black54,
                                        )
                                      ],
                                    ),

                                    AutoSizeText(
                                      'Men Solid Knitted Round Neck ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15.5,
                                          color: Colors.black45),
                                      minFontSize: 15,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    // decoration: TextDecoration.lineThrough,
                                    Row(
                                      children: [
                                        AutoSizeText(
                                          '\u{20B9}499',
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15.5,
                                              color: Colors.black45),
                                          minFontSize: 15,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(
                                          width: 2.5,
                                        ),
                                        AutoSizeText(
                                          '\u{20B9}299',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15.5,
                                          ),
                                          minFontSize: 15,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    AutoSizeText(
                                      '40% OFF',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15.5,
                                          color: Colors.green),
                                      minFontSize: 15,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
