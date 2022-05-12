// import 'package:da_techno/Screens/detail_page.dart';
import 'package:da_techno_app/model/main_categories.dart';
import 'package:da_techno_app/screen/add_to_cart/add_to_cart_process_view.dart';
import 'package:da_techno_app/screen/notification_view.dart';
import 'package:da_techno_app/screen/product_details/product_details_view.dart';
import 'package:da_techno_app/screen/product_list/product_category_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import '../Model/categories.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Categories> category = [
    Categories(imgLabel: 'assets/mobile.png', name: 'Mobiles'),
    Categories(imgLabel: 'assets/appliance.png', name: 'Appliances'),
    Categories(imgLabel: 'assets/nutrition.png', name: 'Nutritions'),
    Categories(imgLabel: 'assets/mobile.png', name: 'Mobiles'),
    Categories(imgLabel: 'assets/appliance.png', name: 'Appliances'),
    Categories(imgLabel: 'assets/nutrition.png', name: 'Nutritions'),
    Categories(imgLabel: 'assets/mobile.png', name: 'Mobiles'),
  ];
  List<String> list = [
    'summer-sale-special-offer-banner-vector-25170371.jpg',
    'big-sale-time-special-offer-banner-with-gift-vector-41766868.jpg',
    'summer-sale-special-offer-banner-vector-25170371.jpg',
    'big-sale-time-special-offer-banner-with-gift-vector-41766868.jpg',
    'summer-sale-special-offer-banner-vector-25170371.jpg',
    'big-sale-time-special-offer-banner-with-gift-vector-41766868.jpg',
  ];
  String name = 'Aayush';
  String location = 'Mumbai';
  String pincode = '400067';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,

          elevation: 0,
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AddToCartProcessView()),
                );
              },
              child: Badge(
                  badgeContent: Text(
                    '2',
                    style: TextStyle(color: Colors.white),
                  ),
                  position: BadgePosition.topEnd(top: 4, end: 20),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Image(
                      image: AssetImage('assets/shopping.png'),
                      height: 30,
                    ),
                  )
                  // child: IconButton(
                  //   icon: Icon(Icons.),
                  //   onPressed: () {},
                  // ),
                  ),
            ),
          ],
          // leading:
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          title: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Image(
              image: AssetImage(
                'assets/logo-da-square.png',
              ),
              height: 65,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        backgroundColor: Colors.grey[200],
        body: Column(
          children: [
            Container(
              // height: 60,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),

              padding: EdgeInsets.only(bottom: 12, left: 12, right: 12, top: 6),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.65,
                    child: CupertinoSearchTextField(),
                  ),
                  Badge(
                    // padding: EdgeInsets,
                    badgeContent: Text(
                      '4',
                      style: TextStyle(color: Colors.white),
                    ),
                    position: BadgePosition.topEnd(top: 0, end: 2),
                    child: IconButton(
                      icon: Icon(
                        Icons.notifications,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NotificationView()),
                        );
                      },
                    ),
                  ),
                ],
              ),

              // SizedBox(
              //   height: 5,
              // )
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: RangeMaintainingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                      height: 25,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 12,
                          ),
                          SvgPicture.asset(
                            'assets/Vector.svg',
                            height: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          // Icon(Icons.golf_course_sharp),
                          Text('Delivery to $name - $location - $pincode'),
                          IconButton(
                            padding: EdgeInsets.zero,
                            // color: Colors.black,
                            // highlightColor: Colors.orange,
                            onPressed: () {},
                            icon: Icon(Icons.keyboard_arrow_down_rounded),
                          ),
                        ],
                      ),
                      // height: 10,
                      width: MediaQuery.of(context).size.width,
                    ),

                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      // height: 70,
                      height: 80,
                      color: Colors.white,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (ctx, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ProductCategoryView()),
                              );
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 7),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // SvgPicture.asset(category[index].imgLabel.toString()),
                                  Flexible(
                                    flex: 5,
                                    child: Image(
                                      image: AssetImage(
                                          category[index].imgLabel.toString()),
                                      height: 45,
                                    ),
                                  ),
                                  Flexible(
                                      flex: 2,
                                      child: Text(
                                          category[index].name.toString())),
                                ],
                              ),
                            ),
                          );
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: 7,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      // width: MediaQuery.of(context).size.width,
                      child: CarouselSlider(
                        options: CarouselOptions(
                          // aspectRatio: 16 / 9,
                          viewportFraction: 1,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 5),
                        ),
                        items: list
                            .map((item) => Container(
                                  // margin: EdgeInsets.all(5),
                                  width: MediaQuery.of(context).size.width,
                                  child: Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage('assets/$item'),
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Row(
                        children: [
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Image(
                              image: AssetImage(
                                  'assets/Screenshot 2022-05-02 160433.png'),
                            ),
                          )),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Image(
                              image: AssetImage('assets/headphone.png'),
                            ),
                          )),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: 6,
                    // ),

                    //   DefaultTabController(
                    //     length: 5,
                    //     initialIndex: 0,
                    //     child: Container(
                    //       // color: Colors.grey,
                    //       width: MediaQuery.of(context).size.width,
                    //       padding: EdgeInsets.all(8.0),
                    //       child: Center(
                    //         child: ButtonsTabBar(
                    //           height: 27,
                    //           buttonMargin: EdgeInsets.all(5),
                    //           backgroundColor: Colors.blue,
                    //           unselectedBackgroundColor: Colors.grey[300],
                    //           unselectedLabelStyle: TextStyle(color: Colors.black),
                    //           labelStyle: TextStyle(
                    //               color: Colors.white, fontWeight: FontWeight.bold),
                    //           tabs: [
                    //             Tab(
                    //               height: 10,
                    //               text: "All",
                    //             ),
                    //             Tab(
                    //               height: 10,
                    //               text: "New Arrival",
                    //             ),
                    //             Tab(
                    //               height: 10,
                    //               text: "Sale Items",
                    //             ),
                    //             Tab(
                    //               height: 10,
                    //               text: "Best Seller",
                    //             ),
                    //             Tab(
                    //               height: 10,
                    //               text: "Featured",
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ],

                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              'Latest and Upcoming products',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 17),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailPage()),
                                        );
                                      },
                                      child: Image(
                                        image:
                                            AssetImage('assets/Group 80.png'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Center(
                                        child:
                                            Text('Appliances | Up to 50% off')),
                                  ],
                                ),
                              )),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      image: AssetImage('assets/Group 80.png'),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Center(
                                        child:
                                            Text('Appliances | Up to 50% off')),
                                  ],
                                ),
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      image: AssetImage('assets/Group 80.png'),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Center(
                                        child:
                                            Text('Appliances | Up to 50% off')),
                                  ],
                                ),
                              )),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      image: AssetImage('assets/Group 80.png'),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Center(
                                        child:
                                            Text('Appliances | Up to 50% off')),
                                  ],
                                ),
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image(
                        image:
                            AssetImage('assets/Header-Desktop_1500x178_EN.jpg'),
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              'Countdown Deals',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 17),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      image: AssetImage('assets/appliance.png'),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Center(
                                        child:
                                            Text('Appliances | Up to 50% off')),
                                  ],
                                ),
                              )),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      image: AssetImage('assets/appliance.png'),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Center(
                                        child:
                                            Text('Appliances | Up to 50% off')),
                                  ],
                                ),
                              )),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      image: AssetImage('assets/appliance.png'),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Center(
                                        child:
                                            Text('Appliances | Up to 50% off')),
                                  ],
                                ),
                              )),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      image: AssetImage('assets/appliance.png'),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Center(
                                        child:
                                            Text('Appliances | Up to 50% off')),
                                  ],
                                ),
                              )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image(
                        fit: BoxFit.contain,
                        image: AssetImage(
                            'assets/summer-sale-special-offer-banner-vector-25170371.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              'Top Brands',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 17),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Stack(
                                  children: [
                                    Image(
                                      image: AssetImage('assets/2312724.jpg'),
                                    ),
                                    Positioned.fill(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/apple-black-logo.png'),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Stack(
                                  children: [
                                    Image(
                                      image: AssetImage('assets/2312724.jpg'),
                                    ),
                                    Positioned.fill(
                                      child: Image(
                                        image:
                                            AssetImage('assets/one-plus.png'),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Stack(
                                  children: [
                                    Image(
                                      image: AssetImage('assets/2312724.jpg'),
                                    ),
                                    Positioned.fill(
                                      child: Image(
                                        image: AssetImage('assets/samsung.png'),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Stack(
                                  children: [
                                    Image(
                                      image: AssetImage('assets/2312724.jpg'),
                                    ),
                                    Positioned.fill(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/pngaaa.com-2167725.png'),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Color.fromARGB(255, 232, 206, 195),
                      height: 50,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Center(
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 2,
                                  ),
                                  CircleAvatar(
                                    child: Icon(
                                      FontAwesomeIcons.truck,
                                      size: 20,
                                      color: Colors.blue[900],
                                    ),
                                    backgroundColor: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text('Fast Delivery'),
                                        Text(
                                          'All order free',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey[800],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 2,
                                  ),
                                  // CircleAvatar(
                                  //   child: Icon(
                                  //     FontAwesomeIcons.arrowRotateRight,
                                  //     size: 20,
                                  //     color: Colors.blue[900],
                                  //   ),
                                  //   backgroundColor: Colors.white,
                                  // ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text('Free Returns'),
                                        Text(
                                          'Free 7-days return',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey[800],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 2,
                                  ),
                                  CircleAvatar(
                                    child: Icon(
                                      FontAwesomeIcons.headset,
                                      size: 20,
                                      color: Colors.blue[900],
                                    ),
                                    backgroundColor: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text('24/7 Support'),
                                        Text(
                                          'Dedicated Support',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey[800],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 2,
                                  ),
                                  CircleAvatar(
                                    child: Icon(
                                      FontAwesomeIcons.gift,
                                      size: 20,
                                      color: Colors.blue[900],
                                    ),
                                    backgroundColor: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text('Gift cards'),
                                        Text(
                                          'Code promotion',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey[800],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
