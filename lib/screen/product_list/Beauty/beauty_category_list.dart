import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simple_shadow/simple_shadow.dart';

class BeautyCategoryList extends StatefulWidget {
  const BeautyCategoryList({Key? key}) : super(key: key);

  @override
  State<BeautyCategoryList> createState() => _BeautyCategoryListState();
}

class _BeautyCategoryListState extends State<BeautyCategoryList> {
  List<String> hnImageList = [
    'skin_care.png',
    'hair_care.png',
    'nail_care.png',
    'oral_hygine.png',
  ];

  List<String> hnTextList = [
    'Skin Care',
    'Hair Care',
    'Nail Care',
    'Oral Hygine'
  ];
  int lengthCategory = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Beauty",
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
        child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                // maxCrossAxisExtent: 300,
                childAspectRatio: 2.5 / 2,
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: lengthCategory,
            itemBuilder: (BuildContext ctx, index) {
              return GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 10, right: 10, bottom: 10),
                  child: SimpleShadow(
                    sigma: 1,
                    opacity: 0.250,
                    offset: Offset(4, 4),
                    child: Container(
                      width: 188.24,
                      height: 196,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          border: Border.all(color: Colors.black45)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 5, left: 5, right: 5, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FadeInImage(
                                  fit: BoxFit.contain,
                                  width: 175.62,
                                  height: 125.17,
                                  fadeInDuration: Duration(milliseconds: 2000),
                                  placeholder: AssetImage(
                                      'assets/placeholder_image.jpg'),
                                  image: AssetImage(
                                    'assets/${hnImageList[index]}',
                                  )),
                              AutoSizeText(
                                "${hnTextList[index]}",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center,
                                minFontSize: 15,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ]),
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
