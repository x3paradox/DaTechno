// import 'package:da_techno/Screens/smart_watches.dart';
import 'package:da_techno_app/screen/product_list/Furnitures/Product%20Details/furniture_product_details_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:auto_size_text/auto_size_text.dart';

class FabricSofa extends StatefulWidget {
  const FabricSofa({Key? key}) : super(key: key);

  @override
  State<FabricSofa> createState() => _FabricSofaState();
}

class _FabricSofaState extends State<FabricSofa> {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> labelName = [
    'abcd',
    'dd',
    'cdcdc',
    'abcd',
    'dd',
    'cdcdc',
    'abcd',
    'dd',
    'cdcdc',
    'abcd',
    'dd',
    'cdcdc',
    'abcd',
    'dd',
    'cdcdc',
    'abcd',
    'dd',
    'cdcdc',
    'abcd',
    'dd',
  ];
  int countValue = 2;

  num aspectWidth = 2;

  num aspectHeight = 1;

  changeMode() {
    if (countValue == 2) {
      setState(() {
        countValue = 1;
        aspectWidth = 3;
        aspectHeight = 2;
      });
    } else {
      setState(() {
        countValue = 2;
        aspectWidth = 2;
        aspectHeight = 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Fabric Sofas",
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
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.list,
                        ),
                        Text('Filter'),
                      ],
                    ),
                    GestureDetector(
                      onTap: () => changeMode(),
                      child: Row(
                        children: [
                          Icon(Icons.grid_view_outlined),
                          Text('Grid'),
                        ],
                      ),
                    ),
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
                                        labelName
                                          ..sort(((a, b) => b.compareTo(a)));
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
                                        labelName
                                          ..sort(((a, b) => a.compareTo(b)));
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
              // SizedBox(
              //   height: 5,
              // ),
              Container(
                padding: const EdgeInsets.all(15.0),
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: countValue,
                      // childAspectRatio: 3 / 2,
                      childAspectRatio: countValue == 2
                          ? MediaQuery.of(context).size.width /
                              (MediaQuery.of(context).size.height / 1.4)
                          : (aspectWidth / aspectHeight * 1.1),
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                    ),
                    itemCount: 20,
                    itemBuilder: (BuildContext ctx, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    FurnitureProductDetailsView()),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                child: Stack(
                                  children: [
                                    Image(
                                        height: 131,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        fit: BoxFit.fill,
                                        image: AssetImage('assets/sofa.jpeg')),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        child: Icon(
                                          Icons.favorite,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              AutoSizeText(
                                labelName[index],
                                maxFontSize: 19,
                                minFontSize: 17,
                                maxLines: 1,
                                style: TextStyle(fontSize: 20),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Divider(),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  AutoSizeText(
                                    'Rs. 50000   ',
                                    maxFontSize: 16,
                                    minFontSize: 14,
                                    maxLines: 1,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  AutoSizeText(
                                    ' Rs. 60000',
                                    maxFontSize: 16,
                                    minFontSize: 14,
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 16,
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              AutoSizeText(
                                '24% off',
                                maxFontSize: 16,
                                minFontSize: 14,
                                maxLines: 1,
                                style: TextStyle(
                                    fontSize: 16, color: Colors.green),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              // Container(
              //     margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              //     child: RaisedButton(
              //       onPressed: () => changeMode(),
              //       child: Text(' Change'),
              //       textColor: Colors.white,
              //       color: Colors.red,
              //       padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
              //     ))
            ],
          ),
        ),
      ),
    );
  }
}
