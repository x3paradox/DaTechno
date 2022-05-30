import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simple_shadow/simple_shadow.dart';

class ArtificialJwelleryCategoryListView extends StatefulWidget {
  const ArtificialJwelleryCategoryListView({Key? key}) : super(key: key);

  @override
  State<ArtificialJwelleryCategoryListView> createState() =>
      _ArtificialJwelleryCategoryListViewState();
}

class _ArtificialJwelleryCategoryListViewState
    extends State<ArtificialJwelleryCategoryListView> {
  List<String> lists = [
    'necklace.jpg',
    'bracelet.jpg',
    'bangles.jpg',
    'earrings.jpg',
    'finger_ring.jpg',
    'mangalsutra.jpg'
  ];
  List<String> womenCategoryText = [
    'Necklace',
    'Bracelet',
    'Bangles',
    'Earrings',
    'Rings',
    'Mangalsutra'
  ];

  int _current = 0;

  final List<String> list = [
    'jwellery_banner1.jpg',
    'jwellery_banner2.jpg',
  ];

  List<String> menCollectionImage = [
    'brooch.jpg',
    'men_bracelet.jpg',
    'kurta_button.jpg',
    'men_necklace.jpg',
  ];
  List<String> menCategoryText = [
    'Brooch',
    'Bracelet',
    'Kurta Button',
    'Necklace',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Artificial Jwellery",
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
        child: Center(
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            AutoSizeText(
              "Women's Collection",
              style: TextStyle(
                fontSize: 17.5,
                fontWeight: FontWeight.w400,
                letterSpacing: 10,
                decoration: TextDecoration.underline,
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
              minFontSize: 17,
              maxFontSize: 17,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 20,
            ),
            GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2.1 / 2.5,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 10),
                itemCount: 6,
                itemBuilder: (BuildContext ctx, index) {
                  return GridTile(
                    child: Container(),
                    header: FadeInImage(
                      height: 209,
                      fit: BoxFit.cover,
                      fadeInDuration: Duration(milliseconds: 5000),
                      width: 185,
                      placeholder: AssetImage('assets/placeholder_image.jpg'),
                      image: AssetImage(
                        'assets/artificial_jwellery/${lists[index]}',
                      ),
                    ),
                    footer: GridTileBar(
                      title: Center(
                        child: AutoSizeText(
                          "${womenCategoryText[index]}",
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                          minFontSize: 15,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  );
                }),
            Container(
              height: 24,
              width: MediaQuery.of(context).size.width,
              color: Color(0xffEDEDED),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                viewportFraction: 1,
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
                          fit: BoxFit.fill,
                          fadeInDuration: Duration(milliseconds: 2500),
                          width: MediaQuery.of(context).size.width,
                          placeholder:
                              AssetImage('assets/placeholder_image.jpg'),
                          image:
                              AssetImage('assets/artificial_jwellery/$item')),
                      // Image.asset(
                      //   'assets/$item',
                      //   fit: BoxFit.fill,
                      // )
                    );
                  },
                );
              }).toList(),
            ),
            Container(
              height: 24,
              width: MediaQuery.of(context).size.width,
              color: Color(0xffEDEDED),
            ),
            SizedBox(
              height: 20,
            ),
            AutoSizeText(
              "Men's Collection",
              style: TextStyle(
                fontSize: 17.5,
                fontWeight: FontWeight.w400,
                letterSpacing: 10,
                decoration: TextDecoration.underline,
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
              minFontSize: 17,
              maxFontSize: 17,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 20,
            ),
            GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2.1 / 2.5,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 10),
                itemCount: 4,
                itemBuilder: (BuildContext ctx, index) {
                  return GridTile(
                    child: Container(),
                    header: FadeInImage(
                      height: 209,
                      fit: BoxFit.cover,
                      fadeInDuration: Duration(milliseconds: 5000),
                      width: 185,
                      placeholder: AssetImage('assets/placeholder_image.jpg'),
                      image: AssetImage(
                        'assets/artificial_jwellery/${menCollectionImage[index]}',
                      ),
                    ),
                    footer: GridTileBar(
                      title: Center(
                        child: AutoSizeText(
                          "${menCategoryText[index]}",
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                          minFontSize: 15,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  );
                }),
            Container(
              height: 24,
              width: MediaQuery.of(context).size.width,
              color: Color(0xffEDEDED),
            ),
          ]),
        ),
      ),
    );
  }
}
