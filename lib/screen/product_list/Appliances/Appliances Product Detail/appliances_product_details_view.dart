import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fradio_nullsafety/fradio_nullsafety.dart';
import 'package:bulleted_list/bulleted_list.dart';
// import 'package:flutter_colorpicker/flutter_colorpicker.dart';
// import 'package:flex_color_picker/flex_color_picker.dart';

class AppliancesProductDetailsView extends StatefulWidget {
  const AppliancesProductDetailsView({Key? key}) : super(key: key);

  @override
  _AppliancesProductDetailsViewState createState() =>
      _AppliancesProductDetailsViewState();
}

class _AppliancesProductDetailsViewState
    extends State<AppliancesProductDetailsView> {
  Color currentColor = Colors.amber;
  List<Color> currentColors = [Colors.black, Colors.grey];

  void changeColor(Color color) => setState(() => currentColor = color);

  String txt = '';
  final CarouselController _controller = CarouselController();
  int _current = 0;
  final List<String> list = [
    'sound_1.jpg',
    'sound_2.jpg',
    'sound_3.jpg',
    'sound_4.jpg',
    'sound_5.jpg'

    // 'r_11_1.jpg',
    // 'r_11_2.jpg',
    // 'r_11_3.jpg',
    // 'r_11_4.jpg',
  ];

  final List<ImageProvider> _imageProviders = [
    Image.asset("assets/appliances/sound_.jpg").image,
  ];

  int groupValue_4 = 0;
  // final List<String> sizeValue = ['B', 'G', 'B', 'R'];

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
                    // onTap: () {
                    //   MultiImageProvider multiImageProvider =
                    //       MultiImageProvider(_imageProviders);
                    //   showImageViewerPager(context, multiImageProvider);

                    // },
                    child: CarouselSlider(
                      options: CarouselOptions(
                        viewportFraction: 1,
                        height: 400,
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
                                    'assets/appliances/$item',
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
                  'boAt AAVANTE Bar 2050 ',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17.5),
                  minFontSize: 17,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 20,
                ),
                AutoSizeText(
                  'boAt AAVANTE Bar 2050 160W 2.1 Channel Bluetooth Soundbar with boAt Signature Sound, Wireless Subwoofer, Multiple Connectivity Modes, Entertainment Modes(Premium Black)',
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
                  '\u{20B9}24,990',
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
                  '\u{20B9}9,999',
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
              '60% OFF',
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
              'Select Color',
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
                  decoration: BoxDecoration(color: Color(0xffFF4E00)),
                  child: CupertinoButton(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            FontAwesomeIcons.shoppingBag,
                            color: Colors.white,
                            size: 20,
                          ),
                          AutoSizeText(
                            "ADD TO BAG",
                            style: TextStyle(
                                color: Colors.white,
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
                  'Its 2.1 Channel captivating sound gets you set for an alternate dimension, with an ethereal sound quality that adds colour to your audio as well as visual experience.',
                  'The exquisitely styled soundbar with its premium finish adds to the beauty of your home as much as it adds to the immersive auditory experience',
                  'Control your playback via easy operational controls and the master remote control device',
                  'All your devices are made accessible by the wireless and wired forms of connectivity, such as Bluetooth V5.0/AUX/USB/Optical and HDMI(ARC) with the versatile Aavante Bar 2050',
                  'Experience the boAt Signature sound with the 80W R.M.S delivered by AAVANTE BAR 2050 and its 80W Wireless Subwoofer',
                  '1 year warranty from the date of purchase'
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
                  "Note",
                  minFontSize: 17,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17.5),
                ),
                SizedBox(
                  width: 20,
                ),
                AutoSizeText(
                  "Limited Offer Only",
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
          itemCount: 2,
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
                  colors: [],
                  begin: Alignment(-0.5, -0.9),
                  end: Alignment(5.0, 5.0),
                  stops: [0.0, 0.2, 0.7, 1.0],
                ),
                selectedColor: Color.fromARGB(255, 7, 7, 7),
                normalColor: Colors.grey,
                hasSpace: false,
                border: 6.5,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentColors[index],
                  ),
                ),
                selectedChild: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xff28a5de), width: 3),
                    color: currentColors[index],
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                      color: currentColors[index],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}

// class CustomImageProvider extends EasyImageProvider {
//   @override
//   final int initialIndex;
//   final List<String> imageUrls;

//   CustomImageProvider({required this.imageUrls, this.initialIndex = 0})
//       : super();

//   @override
//   ImageProvider<Object> imageBuilder(BuildContext context, int index) {
//     return NetworkImage(
//       imageUrls[index],
//     );
//   }

//   @override
//   int get imageCount => imageUrls.length;
// }