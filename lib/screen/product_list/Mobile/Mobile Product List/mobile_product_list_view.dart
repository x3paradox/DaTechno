// import 'package:da_techno/Screens/smart_watches.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:auto_size_text/auto_size_text.dart';

class MobileProductListView extends StatefulWidget {
  const MobileProductListView({Key? key}) : super(key: key);

  @override
  State<MobileProductListView> createState() => _MobileProductListViewState();
}

class _MobileProductListViewState extends State<MobileProductListView> {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> product = [
    'apple1.jpg',
    'mobile_brand_2.jpg',
    'mobile_brand_3.jpg',
    'mobile_brand_4.jpg',
    'mobile_brand_5.jpg',
    'mobile_brand_6.jpg',
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
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
                    'Apple',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 1,
                        color: Colors.black),
                    minFontSize: 15,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              Container(
                height: 2,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[300],
              ),
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                      setState(() {});
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
                                      setState(() {});
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
                color: Colors.grey[300],
                height: 2,
                width: MediaQuery.of(context).size.width,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      padding: const EdgeInsets.all(10.0),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: FadeInImage(
                                  height: 99,
                                  fit: BoxFit.cover,
                                  fadeInDuration: Duration(milliseconds: 5000),
                                  width: 76,
                                  placeholder: AssetImage(
                                      'assets/placeholder_image.jpg'),
                                  image: AssetImage(
                                    'assets/${product[index]}',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 25,
                                ),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      AutoSizeText(
                                        "Apple",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.justify,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        minFontSize: 17,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: AutoSizeText(
                                          "Apple iPhone 13 (512 GB) - Starlight",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal,
                                              color: Color(0xff6F6F6F)),
                                          textAlign: TextAlign.justify,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          minFontSize: 15,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: RatingBar.builder(
                                          initialRating: 5,
                                          minRating: 0.5,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 18,
                                          // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            // size: 5,
                                            color: Color(0xffFF8C4C),
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: Row(
                                          children: [
                                            AutoSizeText(
                                              '4,599',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15,
                                                  color: Colors.black),
                                              minFontSize: 5,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8),
                                              child: AutoSizeText(
                                                '6,499',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 15,
                                                    color: Colors.black45),
                                                minFontSize: 5,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Icon(Icons.favorite_border_outlined)
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Divider(
                            thickness: 1,
                            indent: 1,
                            endIndent: 2,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
