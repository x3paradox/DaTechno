import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
// import 'package:wish_list/placeorder.dart';
import 'package:flutter/cupertino.dart';

class WishListPage extends StatefulWidget {
  const WishListPage({Key? key}) : super(key: key);

  @override
  State<WishListPage> createState() => _WishListPageState();
}

class _WishListPageState extends State<WishListPage> {
  List<String> images = [
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"
  ];
  final List<Map> myProducts =
      List.generate(2, (index) => {"id": index, "name": "Product $index"})
          .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 5, bottom: 5, left: 15, right: 15),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,

                  children: [
                    SimpleShadow(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[50],
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'WishLIst',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          '1 items',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  bottom: 15,
                  left: 15,
                  right: 15,
                ),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      // maxCrossAxisExtent: 300,

                      crossAxisCount: 2,
                      childAspectRatio: 3 / 5,
                      // MediaQuery.of(context).size.width /
                      //     (MediaQuery.of(context).size.height / 1.5),
                      //  3 / 5,
                      // childAspectRatio:
                      // MediaQuery.of(context).size.aspectRatio * 1.30,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: 10,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      height: MediaQuery.of(context).size.height / 1,
                      decoration: BoxDecoration(
                          // color: Colors.yellowAccent,
                          border: Border.all(color: Color(0xff989898), width: 2)

                          // borderRadius: BorderRadius.circular(15),
                          ),
                      // width: 80,
                      // height: 60,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.cancel,
                                color: Color(0xffBDBDBD),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 6,
                            child: GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => StepperUi()),
                                // );
                              },
                              child: Image.asset('assets/mobile_wishlist.png',
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 5, left: 5),
                                  child: AutoSizeText(
                                    'OnePlus 10 Pro 5G',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    minFontSize: 18,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                AutoSizeText(
                                  '\u{20B9}66,999',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  minFontSize: 18,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          // Divider(
                          //   thickness: 2,
                          //   color: Color(0xff989898),
                          // ),
                          Expanded(
                            flex: 2,
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 42.5,
                                decoration: BoxDecoration(
                                  color: Color(0xffFF4E00),
                                ),
                                child: CupertinoButton(
                                  onPressed: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) => BottomNavBar()),
                                    // );
                                  },
                                  child: AutoSizeText(
                                    "add to cart".toUpperCase(),
                                    style: TextStyle(color: Colors.white),
                                    presetFontSizes: [40, 20, 14],
                                    maxLines: 4,
                                  ),
                                  padding: EdgeInsets.all(10),
                                )),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
