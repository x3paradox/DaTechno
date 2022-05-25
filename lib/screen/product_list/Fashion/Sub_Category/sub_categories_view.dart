import 'package:carousel_slider/carousel_slider.dart';
import 'package:da_techno_app/screen/product_list/Fashion/Secondary_Category/seconday_category_fashion.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simple_shadow/simple_shadow.dart';

class SubCategoriesView extends StatefulWidget {
  const SubCategoriesView({Key? key}) : super(key: key);

  @override
  State<SubCategoriesView> createState() => _SubCategoriesViewState();
}

class _SubCategoriesViewState extends State<SubCategoriesView> {
  final CarouselController _controller = CarouselController();
  int _current = 0;
  final List<String> list = [
    'men_offrer_banner.jpg',
    'men_offer_banner2.jpg',
    'men_offer_banner3.jpg',
  ];

  final _totalDots = 5;
  double _currentPosition = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Men APPAREL",
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
                        child: FadeInImage(
                            fit: BoxFit.fill,
                            fadeInDuration: Duration(milliseconds: 2500),
                            width: MediaQuery.of(context).size.width,
                            placeholder:
                                AssetImage('assets/placeholder_image.jpg'),
                            image: AssetImage('assets/$item')),
                        // Image.asset(
                        //   'assets/$item',
                        //   fit: BoxFit.fill,
                        // )
                      );
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
              Container(
                width: MediaQuery.of(context).size.width,
                height: 24,
                color: Color(0xffEDEDED),
              ),
              ExpansionTile(
                title: Text(
                  'Topwear',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.black),
                ),
                childrenPadding: EdgeInsets.only(left: 20),
                collapsedTextColor: Colors.black54,
                textColor: Colors.black54,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SecondaryCategoryFashionView()),
                      );
                    },
                    child: Container(
                      height: 40,
                      child: ListTile(
                        title: Text('T-shirts'),
                      ),
                    ),
                  ),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Casual Shirts'))),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Formal Shirts'))),
                  Container(
                      height: 40, child: ListTile(title: Text('Jeakets'))),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Blazzers & Suits'))),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'Topwear',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.black),
                ),
                childrenPadding: EdgeInsets.only(left: 20),
                collapsedTextColor: Colors.black54,
                textColor: Colors.black54,
                children: [
                  Container(
                    height: 40,
                    child: ListTile(
                      title: Text('T-Shirts'),
                    ),
                  ),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Casual Shirts'))),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Formal Shirts'))),
                  Container(
                      height: 40, child: ListTile(title: Text('Jeakets'))),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Blazzers & Suits'))),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'Topwear',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.black),
                ),
                childrenPadding: EdgeInsets.only(left: 20),
                collapsedTextColor: Colors.black54,
                textColor: Colors.black54,
                children: [
                  Container(
                    height: 40,
                    child: ListTile(
                      title: Text('T-Shirts'),
                    ),
                  ),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Casual Shirts'))),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Formal Shirts'))),
                  Container(
                      height: 40, child: ListTile(title: Text('Jeakets'))),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Blazzers & Suits'))),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'Topwear',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.black),
                ),
                childrenPadding: EdgeInsets.only(left: 20),
                collapsedTextColor: Colors.black54,
                textColor: Colors.black54,
                children: [
                  Container(
                    height: 40,
                    child: ListTile(
                      title: Text('T-Shirts'),
                    ),
                  ),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Casual Shirts'))),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Formal Shirts'))),
                  Container(
                      height: 40, child: ListTile(title: Text('Jeakets'))),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Blazzers & Suits'))),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'Topwear',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.black),
                ),
                childrenPadding: EdgeInsets.only(left: 20),
                collapsedTextColor: Colors.black54,
                textColor: Colors.black54,
                children: [
                  Container(
                    height: 40,
                    child: ListTile(
                      title: Text('T-Shirts'),
                    ),
                  ),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Casual Shirts'))),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Formal Shirts'))),
                  Container(
                      height: 40, child: ListTile(title: Text('Jeakets'))),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Blazzers & Suits'))),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'Topwear',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.black),
                ),
                childrenPadding: EdgeInsets.only(left: 20),
                collapsedTextColor: Colors.black54,
                textColor: Colors.black54,
                children: [
                  Container(
                    height: 40,
                    child: ListTile(
                      title: Text('T-Shirts'),
                    ),
                  ),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Casual Shirts'))),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Formal Shirts'))),
                  Container(
                      height: 40, child: ListTile(title: Text('Jeakets'))),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Blazzers & Suits'))),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'Topwear',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.black),
                ),
                childrenPadding: EdgeInsets.only(left: 20, bottom: 20),
                collapsedTextColor: Colors.black54,
                textColor: Colors.black54,
                children: [
                  Container(
                    height: 40,
                    child: ListTile(
                      title: Text('T-Shirts'),
                    ),
                  ),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Casual Shirts'))),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Formal Shirts'))),
                  Container(
                      height: 40, child: ListTile(title: Text('Jeakets'))),
                  Container(
                      height: 40,
                      child: ListTile(title: Text('Blazzers & Suits'))),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 24,
                color: Color(0xffEDEDED),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
