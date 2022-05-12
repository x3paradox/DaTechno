import 'package:da_techno_app/class/adaptivetextsize.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:auto_size_text/auto_size_text.dart';

class FashionProductListView extends StatefulWidget {
  const FashionProductListView({Key? key}) : super(key: key);

  @override
  State<FashionProductListView> createState() => _FashionProductListViewState();
}

class _FashionProductListViewState extends State<FashionProductListView> {
  final List<Map> myProducts =
      List.generate(25, (index) => {"id": index, "name": "Product $index"})
          .toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
          child: Column(
        children: [
          Container(
            color: Colors.white,
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
                      backgroundColor: Colors.grey[400],
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: '   Shoe ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: '10 Product Found',
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.sort,
                    ),
                    Text(
                      ' SORT',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                Container(
                    height: 60,
                    child: VerticalDivider(
                      color: Color(0xffFF4E00),
                      indent: 10,
                      endIndent: 10,
                      thickness: 1,
                    )),
                Row(
                  children: [
                    Icon(Icons.filter_alt_outlined),
                    Text(
                      ' FILTER',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
          
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: GridView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.only(
                    left: 10, right: 10, bottom: 0, top: 0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 1.4),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 15),
                itemCount: 20,
                itemBuilder: (BuildContext ctx, index) {
                  return SimpleShadow(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                            topRight: Radius.circular(12),
                            topLeft: Radius.circular(12),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FittedBox(
                              child: Container(
                                height: 25,
                                width: 60,
                                decoration: ShapeDecoration(
                                  color: Color(0xff3466b0),
                                  shape: SmoothRectangleBorder(
                                    borderRadius: SmoothBorderRadius.only(
                                      bottomRight: SmoothRadius(
                                        cornerRadius: 30,
                                        cornerSmoothing: 0.1,
                                      ),
                                    ),
                                  ),
                                ),
                                child: Center(
                                    child: Text(
                                  "14% Off",
                                  style: TextStyle(
                                      fontSize: 12.5, color: Colors.white),
                                )),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Center(
                              child: Image.asset(
                                'assets/mobile_wishlist.png',
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  ' One Plus 10 Pro 5G',
                                  // style: TextStyle(
                                  //     fontSize: AdaptiveTextSize()
                                  //         .getadaptiveTextSize(context, 20)),
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                            RatingBar.builder(
                              initialRating: 5,
                              minRating: 0.5,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 20,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 1.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                // size: 5,
                                color: Color(0xffff8c4c),
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            Text(' 66,999')
                          ],
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                  );
                }),
          ),
        ],
      )),
    );
  }
}
