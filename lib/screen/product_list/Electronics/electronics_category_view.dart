import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:da_techno_app/screen/product_list/Electronics/electronics_product_list_view.dart';
// import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:simple_shadow/simple_shadow.dart';

class ElectronicCategoryView extends StatefulWidget {
  const ElectronicCategoryView({Key? key}) : super(key: key);

  @override
  State<ElectronicCategoryView> createState() => _ElectronicCategoryViewState();
}

class _ElectronicCategoryViewState extends State<ElectronicCategoryView> {
  final CarouselController _controller = CarouselController();
  int _current = 0;

  final _totalDots = 5;
  double _currentPosition = 0.0;

  final List<String> list = [
    'e_banner1.jpeg',
    'e_banner2.jpeg',
    'e_banner3.jpeg',
    'e_banner4.jpeg',
  ];

  double _validPosition(double position) {
    final List<String> entries = <String>['A', 'B', 'C'];
    final List<int> colorCodes = <int>[600, 500, 100];

    List<String> countries = [
      "Brazil",
      "Nepal",
      "India",
      "China",
      "USA",
      "Canada"
    ];
    if (position >= _totalDots) return 0;
    if (position < 0) return _totalDots - 1.0;
    return position;
  }

  void _updatePosition(double position) {
    setState(() => _currentPosition = _validPosition(position));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Electronics",
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
          child: SafeArea(
              child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
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
                          child: Image.asset(
                            'assets/$item',
                            fit: BoxFit.fill,
                          ));
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
              // new DotsIndicator(
              //     dotsCount: _totalDots,
              //     position: _currentPosition,
              //     onTap: (position) {
              //       setState(() => _currentPosition = position);
              //     }),
              Container(
                color: Colors.grey[300],
                height: 10,
                width: MediaQuery.of(context).size.width,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '  Categories',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                height: 620,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 20.0,
                        mainAxisExtent: 180.0),
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ), //BoxShadow
                                BoxShadow(
                                  color: Colors.white,
                                  offset: const Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ),
                              ]),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/lapi.jpeg",
                                fit: BoxFit.fill,
                                height: 125,
                                width: 100,
                              ),
                              Expanded(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  // height: MediaQuery.of(context).size.height * 0.1,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          // topRight: Radius.circular(40.0),
                                          bottomRight: Radius.circular(10.0),
                                          // topLeft: Radius.circular(40.0),
                                          bottomLeft: Radius.circular(10.0)),
                                      color: Color(0xff3853a4)),
                                  child: Center(
                                      child: AutoSizeText(
                                    'Gaming Laptop',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 17.5),
                                  )),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SmartWatches()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ), //BoxShadow
                                BoxShadow(
                                  color: Colors.white,
                                  offset: const Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ),
                              ]),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/watch2.jpeg",
                                fit: BoxFit.fill,
                                height: 125,
                                width: 100,
                              ),
                              Expanded(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  // height: MediaQuery.of(context).size.height * 0.1,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          // topRight: Radius.circular(40.0),
                                          bottomRight: Radius.circular(10.0),
                                          // topLeft: Radius.circular(40.0),
                                          bottomLeft: Radius.circular(10.0)),
                                      color: Color(0xff3853a4)),
                                  child: Center(
                                      child: AutoSizeText(
                                    'Smart watches',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 17.5),
                                  )),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ), //BoxShadow
                                BoxShadow(
                                  color: Colors.white,
                                  offset: const Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ),
                              ]),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/printer.jpeg",
                                fit: BoxFit.fill,
                                height: 125,
                                width: 100,
                              ),
                              Expanded(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  // height: MediaQuery.of(context).size.height * 0.1,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          // topRight: Radius.circular(40.0),
                                          bottomRight: Radius.circular(10.0),
                                          // topLeft: Radius.circular(40.0),
                                          bottomLeft: Radius.circular(10.0)),
                                      color: Color(0xff3853a4)),
                                  child: Center(
                                      child: AutoSizeText(
                                    'Printers',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 17.5),
                                  )),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ), //BoxShadow
                                BoxShadow(
                                  color: Colors.white,
                                  offset: const Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ),
                              ]),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/cam.jpeg",
                                fit: BoxFit.fill,
                                height: 125,
                                width: 100,
                              ),
                              Expanded(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  // height: MediaQuery.of(context).size.height * 0.1,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          // topRight: Radius.circular(40.0),
                                          bottomRight: Radius.circular(10.0),
                                          // topLeft: Radius.circular(40.0),
                                          bottomLeft: Radius.circular(10.0)),
                                      color: Color(0xff3853a4)),
                                  child: Center(
                                      child: AutoSizeText(
                                    'Digital cameras',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 17.5),
                                  )),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ), //BoxShadow
                                BoxShadow(
                                  color: Colors.white,
                                  offset: const Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ),
                              ]),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/cctv.jpeg",
                                fit: BoxFit.fill,
                                height: 125,
                                width: 100,
                              ),
                              Expanded(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  // height: MediaQuery.of(context).size.height * 0.1,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          // topRight: Radius.circular(40.0),
                                          bottomRight: Radius.circular(10.0),
                                          // topLeft: Radius.circular(40.0),
                                          bottomLeft: Radius.circular(10.0)),
                                      color: Color(0xff3853a4)),
                                  child: Center(
                                      child: AutoSizeText(
                                    'CCTVs',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 17.5),
                                  )),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ), //BoxShadow
                                BoxShadow(
                                  color: Colors.white,
                                  offset: const Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ),
                              ]),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/headphone.jpeg",
                                fit: BoxFit.fill,
                                height: 125,
                                width: 100,
                              ),
                              Expanded(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  // height: MediaQuery.of(context).size.height * 0.1,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          // topRight: Radius.circular(40.0),
                                          bottomRight: Radius.circular(10.0),
                                          // topLeft: Radius.circular(40.0),
                                          bottomLeft: Radius.circular(10.0)),
                                      color: Color(0xff3853a4)),
                                  child: Center(
                                      child: AutoSizeText(
                                    'Audio',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 17.5),
                                  )),
                                ),
                              )
                            ],
                          ),
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
                height: 12,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[300],
              ),
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/watchbanner.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 10,
                color: Colors.grey[300],
              ),
              Container(
                color: Color.fromARGB(255, 66, 108, 201),
                height: 285,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Smart Watchs',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.all(5),
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                    color: Colors.grey[300],
                                  ),
                                  child: Column(
                                    children: [
                                      FittedBox(
                                        child: Center(
                                            child: Image.asset(
                                          'assets/watch.jpeg',
                                          fit: BoxFit.fill,
                                          height: 150,
                                          width: 180,
                                        )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Apple Watch Series 3',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Text(
                                        ' From 18,900',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.grey[300],
                height: 10,
                width: MediaQuery.of(context).size.width,
              ),
              Image.asset(
                'assets/watchbanner.jpg',
                fit: BoxFit.fill,
              ),
              Container(
                height: 10,
                color: Colors.grey[300],
              ),
              Container(
                height: 12,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
              ),
              // Container(
              //   height: 12,
              //   width: MediaQuery.of(context).size.width,
              //   color: Colors.grey[300],
              // ),
              Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        '  Computer Accessories',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                height: 375,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 20.0,
                        mainAxisExtent: 160.0),
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ), //BoxShadow
                                BoxShadow(
                                  color: Colors.white,
                                  offset: const Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ),
                              ]),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/wifi.jpeg",
                                fit: BoxFit.fill,
                                height: 100,
                                width: 100,
                              ),
                              Expanded(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  // height: MediaQuery.of(context).size.height * 0.1,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          // topRight: Radius.circular(40.0),
                                          bottomRight: Radius.circular(10.0),
                                          // topLeft: Radius.circular(40.0),
                                          bottomLeft: Radius.circular(10.0)),
                                      color: Color(0xff3853a4)),
                                  child: Center(
                                      child: AutoSizeText(
                                    'Router From 749 ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 17.5),
                                  )),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ), //BoxShadow
                                BoxShadow(
                                  color: Colors.white,
                                  offset: const Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ),
                              ]),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/cam2.jpeg",
                                fit: BoxFit.fill,
                                height: 100,
                                width: 100,
                              ),
                              Expanded(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  // height: MediaQuery.of(context).size.height * 0.1,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          // topRight: Radius.circular(40.0),
                                          bottomRight: Radius.circular(10.0),
                                          // topLeft: Radius.circular(40.0),
                                          bottomLeft: Radius.circular(10.0)),
                                      color: Color(0xff3853a4)),
                                  child: Center(
                                      child: AutoSizeText(
                                    'WebCams From 549',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 17.5),
                                  )),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ), //BoxShadow
                                BoxShadow(
                                  color: Colors.white,
                                  offset: const Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ),
                              ]),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/cam.jpeg",
                                fit: BoxFit.fill,
                                height: 100,
                                width: 100,
                              ),
                              Expanded(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  // height: MediaQuery.of(context).size.height * 0.1,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          // topRight: Radius.circular(40.0),
                                          bottomRight: Radius.circular(10.0),
                                          // topLeft: Radius.circular(40.0),
                                          bottomLeft: Radius.circular(10.0)),
                                      color: Color(0xff3853a4)),
                                  child: Center(
                                      child: AutoSizeText(
                                    'Mouse From 149',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 17.5),
                                  )),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ), //BoxShadow
                                BoxShadow(
                                  color: Colors.white,
                                  offset: const Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ),
                              ]),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/key.jpeg",
                                fit: BoxFit.fill,
                                height: 100,
                                width: 100,
                              ),
                              Expanded(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  // height: MediaQuery.of(context).size.height * 0.1,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          // topRight: Radius.circular(40.0),
                                          bottomRight: Radius.circular(10.0),
                                          // topLeft: Radius.circular(40.0),
                                          bottomLeft: Radius.circular(10.0)),
                                      color: Color(0xff3853a4)),
                                  child: Center(
                                      child: AutoSizeText(
                                    'Keybord From 549',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 17.5),
                                  )),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.grey[300],
                height: 10,
              )
            ],
          )),
        ));
  }
}
