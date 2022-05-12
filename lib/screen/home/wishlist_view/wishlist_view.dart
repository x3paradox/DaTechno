import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
// import 'package:wish_list/placeorder.dart';

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
                          border: Border.all()

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
                                Text(
                                  'OnePLus 10 Pro 5G',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text('69,999.00',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                            color: Colors.black,
                          ),
                          Flexible(
                            flex: 1,
                            child: Text(
                              'MOVE TO CART',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffff4e00)),
                            ),
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
