import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:da_techno_app/views/ProductImageListView/product_imagelist_view.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bubble_radio_button/bubble_radio_button.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fradio_nullsafety/fradio_nullsafety.dart';
import 'package:bulleted_list/bulleted_list.dart';

class FashionProductDetailsView extends StatefulWidget {
  const FashionProductDetailsView({Key? key}) : super(key: key);

  @override
  _FashionProductDetailsViewState createState() =>
      _FashionProductDetailsViewState();
}

class _FashionProductDetailsViewState extends State<FashionProductDetailsView> {
  String txt = '';
  final CarouselController _controller = CarouselController();
  int _current = 0;
  final List<String> list = [
    'r_11.jpg',
    'r_11_1.jpg',
    'r_11_2.jpg',
    'r_11_3.jpg',
    'r_11_4.jpg',
  ];

  final List<ImageProvider> _imageProviders = [
    Image.asset("assets/r_11.jpg").image,
    Image.asset("assets/r_11_1.jpg").image,
    Image.asset("assets/r_11_2.jpg").image,
    Image.asset("assets/r_11_3.jpg").image
  ];

  int groupValue_4 = 0;
  final List<String> sizeValue = ['S', 'M', 'L', 'XL'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Column(
            children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      MultiImageProvider multiImageProvider =
                          MultiImageProvider(_imageProviders);
                      showImageViewerPager(context, multiImageProvider);
                    },
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 573,
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
                              child: FadeInImage(
                                  fit: BoxFit.cover,
                                  fadeInDuration: Duration(milliseconds: 5000),
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          maxRadius: 15,
                          minRadius: 15,
                          backgroundColor: Colors.grey[50],
                          child: Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        maxRadius: 15,
                        minRadius: 15,
                        backgroundColor: Colors.grey[50],
                        child: Icon(
                          Icons.share,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )
                ],
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
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AutoSizeText(
                  'Roadster',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17.5),
                  minFontSize: 17,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 20,
                ),
                AutoSizeText(
                  'Men Off White MelangeSolid Round Neck Regular Sleeves Knitted T-shirt',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Color(0xff6F6F6F)),
                  minFontSize: 15,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                AutoSizeText(
                  '\u{20B9}499',
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontWeight: FontWeight.normal,
                      fontSize: 15.5,
                      color: Color(0xff6F6F6F)),
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
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                  minFontSize: 17,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AutoSizeText(
              '40% OFF',
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Colors.green),
              minFontSize: 15,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            height: 20,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[300],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AutoSizeText(
              'Select Size',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17.5),
              minFontSize: 17,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: sizeVariants(),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 183,
                  height: 56,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffD9D9D9))),
                  child: CupertinoButton(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            FontAwesomeIcons.heart,
                            color: Colors.black,
                            size: 20,
                          ),
                          AutoSizeText(
                            "WISHLIST",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.5,
                                fontWeight: FontWeight.w400),
                            maxFontSize: 17,
                            minFontSize: 17,
                          ),
                        ],
                      ),
                      onPressed: () {}),
                ),
                Container(
                  width: 183,
                  height: 56,
                  decoration: BoxDecoration(color: Color(0xffb6d87b)),
                  child: CupertinoButton(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            FontAwesomeIcons.shoppingBag,
                            color: Colors.black,
                            size: 20,
                          ),
                          AutoSizeText(
                            "ADD TO BAG",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.5,
                                fontWeight: FontWeight.w400),
                            maxFontSize: 17,
                            minFontSize: 17,
                          ),
                        ],
                      ),
                      onPressed: () {}),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 20,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[300],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AutoSizeText(
              'Product Details',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17.5),
              minFontSize: 17,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BulletedList(
                bullet: Icon(
                  Icons.circle,
                  color: Color(0xff6F6F6F),
                  size: 10,
                ),
                crossAxisAlignment: CrossAxisAlignment.start,
                style: TextStyle(
                    fontSize: 17.5,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff6F6F6F)),
                listItems: [
                  'Off whiote melange tshrit for men',
                  'Solid',
                  'Regular length',
                  'Round neck',
                  'Short, regular sleeves',
                  'Knitted cotton, polyster fabric'
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AutoSizeText(
                  "Size & Fit",
                  minFontSize: 17,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17.5),
                ),
                SizedBox(
                  width: 20,
                ),
                AutoSizeText(
                  "Regular Fit",
                  minFontSize: 17,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 17.5,
                      color: Color(0xff6f6f6f)),
                ),
              ],
            ),
          ),
          Container(
            height: 20,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[300],
          )
        ]),
      ),
    ));
  }

  Widget sizeVariants() {
    return SizedBox(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: index == 4 ? 0 : 10),
              child: FRadio(
                width: 50,
                height: 50,
                value: index + 1,
                groupValue: groupValue_4,
                onChanged: (value) {
                  setState(() {
                    groupValue_4 = value as int;
                  });
                },
                gradient: LinearGradient(
                  colors: [
                    Color(0xffd4d4d4),
                    Color(0xff9a9a9a),
                    Color(0xff707070),
                    Color(0xff454545),
                  ],
                  begin: Alignment(-0.1, -0.9),
                  end: Alignment(1.0, 1.0),
                  stops: [0.0, 0.2, 0.7, 1.0],
                ),
                selectedColor: Color(0xffffc900),
                hasSpace: false,
                border: 1.5,
                child: Text(
                  "${sizeValue[index]}",
                  style: TextStyle(
                      color: Color(0xffd9d9d9),
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
                hoverChild: Text(
                  "${sizeValue[index]}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
                selectedChild: Text("${sizeValue[index]}",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400)),
              ),
            );
          }),
    );
  }
}

class CustomImageProvider extends EasyImageProvider {
  @override
  final int initialIndex;
  final List<String> imageUrls;

  CustomImageProvider({required this.imageUrls, this.initialIndex = 0})
      : super();

  @override
  ImageProvider<Object> imageBuilder(BuildContext context, int index) {
    return NetworkImage(
      imageUrls[index],
    );
  }

  @override
  int get imageCount => imageUrls.length;
}
