import 'package:auto_size_text/auto_size_text.dart';
import 'package:da_techno_app/screen/product_list/Nutrition/Nutrition%20Product%20Detail/nutrition_product_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:simple_shadow/simple_shadow.dart';

class NutritionProductListView extends StatefulWidget {
  const NutritionProductListView({Key? key}) : super(key: key);

  @override
  _NutritionProductListViewState createState() =>
      _NutritionProductListViewState();
}

class _NutritionProductListViewState extends State<NutritionProductListView> {
  final List<String> productImage = [
    'whey_1.png',
    'whey_2.png',
    'whey_3.png',
    'whey_4.png',
    'whey_5.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Whey Proteins",
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 5,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffdcdcdc),
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
                    // GestureDetector(
                    //   onTap: () => changeMode(),
                    //   child: Row(
                    //     children: [
                    //       Icon(Icons.grid_view_outlined),
                    //       Text('Grid'),
                    //     ],
                    //   ),
                    // ),
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
                                        // labelName
                                        //   ..sort(((a, b) => b.compareTo(a)));
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
                                        // labelName
                                        //   ..sort(((a, b) => a.compareTo(b)));
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
                width: MediaQuery.of(context).size.width,
                color: Color(0xffdcdcdc),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NutritionProductDetailView()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 390,
                          height: 150,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff6F6F6F)),
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FittedBox(
                                child: Container(
                                  width: 118,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(12),
                                          topLeft: Radius.circular(12)),
                                      color: Color(0xffEDEDED)),
                                  child: FadeInImage(
                                      height: 119,
                                      fit: BoxFit.contain,
                                      fadeInDuration:
                                          Duration(milliseconds: 5000),
                                      width: 102,
                                      placeholder: AssetImage(
                                          'assets/placeholder_image.jpg'),
                                      image: AssetImage(
                                        'assets/${productImage[index]}',
                                      )),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    AutoSizeText(
                                      "MuscleBlaze Biozyme Performance Whey",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                      textAlign: TextAlign.start,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      minFontSize: 17,
                                    ),
                                    AutoSizeText(
                                      "4.4 lb . Rich Chocolate",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xff6F6F6F)),
                                      textAlign: TextAlign.justify,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      minFontSize: 15,
                                    ),
                                    RatingBar.builder(
                                      initialRating: 5,
                                      minRating: 0.5,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 14,
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
                                    Row(
                                      children: [
                                        AutoSizeText(
                                          '3,599',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                              color: Colors.black),
                                          minFontSize: 5,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        AutoSizeText(
                                          '4,499',
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                              color: Colors.black45),
                                          minFontSize: 5,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.favorite_border_outlined),
                              )
                            ],
                          ),
                        ),
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
