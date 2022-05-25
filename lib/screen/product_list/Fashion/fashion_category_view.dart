import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

class FashionCategoryView extends StatefulWidget {
  const FashionCategoryView({Key? key}) : super(key: key);

  @override
  State<FashionCategoryView> createState() => _FashionCategoryViewState();
}

class _FashionCategoryViewState extends State<FashionCategoryView> {
  final List<String> list = [
    '319.jpg',
    '300.jpg',
    '143.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
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
                          backgroundColor: Colors.grey[50],
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Fashion',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Text(
                  'Offer',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                // width: MediaQuery.of(context).size.width,
                child: CarouselSlider(
                  options: CarouselOptions(enableInfiniteScroll: false
                      // aspectRatio: 16 / 9,
                      // viewportFraction: 1,
                      // autoPlay: true,
                      // autoPlayInterval: Duration(seconds: 5),
                      ),
                  items: list
                      .map((item) => Container(
                            margin: const EdgeInsets.all(15.0),
                            // margin: EdgeInsets.all(5),
                            width: MediaQuery.of(context).size.width,

                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            clipBehavior: Clip.antiAlias,
                            child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/$item'),
                            ),
                          ))
                      .toList(),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Text(
                  'Sub Categories',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 10,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 10 / 14,
                          crossAxisCount: 2,
                          // crossAxisSpacing: 0,
                          mainAxisSpacing: 20,
                        ),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Expanded(
                                child: Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Image(
                                    image: AssetImage('assets/shoe.jpg'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('SHOE'),
                            ],
                          );
                        }),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              // CupertinoButton(child: child, onPressed: onPressed)?
            ],
          ),
        ),
      ),
    );
  }
}
