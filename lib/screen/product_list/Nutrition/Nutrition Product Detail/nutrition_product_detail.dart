import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NutritionProductDetailView extends StatefulWidget {
  const NutritionProductDetailView({Key? key}) : super(key: key);

  @override
  State<NutritionProductDetailView> createState() =>
      _NutritionProductDetailViewState();
}

class _NutritionProductDetailViewState
    extends State<NutritionProductDetailView> {
  final List<String> list = [
    'whey_3.png',
    'whey_3_1.jpg',
    'whey_3_2.jpg',
    'whey_3_3.jpg',
    'whey_3_4.jpg',
    'whey_3_5.jpg',
    'whey_3_6.jpg',
    'whey_3_7.jpg',
  ];
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<ImageProvider> _imageProviders = [
    Image.asset("assets/whey_3.png").image,
    Image.asset("assets/whey_3_1.jpg").image,
    Image.asset("assets/whey_3_2.jpg").image,
    Image.asset("assets/whey_3_3.jpg").image,
    Image.asset("assets/whey_3_4.jpg").image,
    Image.asset("assets/whey_3_5.jpg").image,
    Image.asset("assets/whey_3_6.jpg").image,
    Image.asset("assets/whey_3_7.jpg").image,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                    color: Colors.grey[300],
                    width: MediaQuery.of(context).size.width,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 318,
                        viewportFraction: 1,
                        autoPlay: true,
                        onPageChanged: (index, reason) {
                          setState(() {});
                        },
                      ),
                      items: list.map((item) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              // margin: EdgeInsets.symmetric(horizontal: 5.0),
                              width: 250,
                              decoration: BoxDecoration(),
                              child: FadeInImage(
                                  height: 200,
                                  width: 149,
                                  fit: BoxFit.fill,
                                  fadeInDuration: Duration(milliseconds: 5000),
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
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 12),
              child: AutoSizeText(
                "ON(Optimum Nutrition) Gold Standard 100%",
                style: TextStyle(fontSize: 17.5, fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                minFontSize: 17,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 5),
              child: AutoSizeText(
                "Whey Protein, 5 lb Double Rich Chocolate",
                style: TextStyle(fontSize: 17.5, fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                minFontSize: 17,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 15),
                  child: AutoSizeText(
                    '7,041',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 17.5,
                        color: Colors.black),
                    minFontSize: 17,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 15),
                  child: AutoSizeText(
                    '4,499',
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontWeight: FontWeight.normal,
                        fontSize: 17.5,
                        color: Colors.black45),
                    minFontSize: 17,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 15),
              child: RatingBar.builder(
                initialRating: 5,
                minRating: 0.5,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 14.88,
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
            SizedBox(
              height: 15,
            ),
            Container(
              height: 5,
              color: Colors.grey[300],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 5),
              child: AutoSizeText(
                "Select Variant",
                style: TextStyle(fontSize: 17.5, fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                minFontSize: 17,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 5),
                  child: AutoSizeText(
                    "Weight",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black45),
                    textAlign: TextAlign.justify,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    minFontSize: 17,
                  ),
                ),
                Expanded(
                  child: Container(
                      color: Colors.black45,
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      height: 20,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Text("First line"),
                        ],
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
