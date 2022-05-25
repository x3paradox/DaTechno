import 'package:da_techno_app/screen/product_list/Fashion/Sub_Category/sub_categories_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:cupertino_list_tile/cupertino_list_tile.dart';

class FashionCategoriesView extends StatefulWidget {
  const FashionCategoriesView({Key? key}) : super(key: key);

  @override
  State<FashionCategoriesView> createState() => _FashionCategoriesViewState();
}

class _FashionCategoriesViewState extends State<FashionCategoriesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Fashion",
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 117,
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(0)),
                        // depth: 2.5,
                        intensity: 1,
                        shadowDarkColor: Colors.grey[400],
                        shadowLightColor: Colors.grey[50],
                        // lightSource: LightSource.top,
                        color: Colors.white),
                    child: FadeInImage(
                        fit: BoxFit.fill,
                        fadeInDuration: Duration(milliseconds: 2000),
                        width: MediaQuery.of(context).size.width,
                        placeholder: AssetImage('assets/placeholder_image.jpg'),
                        image: AssetImage('assets/women.jpg')),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SubCategoriesView()),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 117,
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(0)),
                          // depth: 2.5,
                          intensity: 1,
                          shadowDarkColor: Colors.grey[400],
                          shadowLightColor: Colors.grey[50],
                          // lightSource: LightSource.top,
                          color: Colors.white),
                      child: FadeInImage(
                          fit: BoxFit.fill,
                          fadeInDuration: Duration(milliseconds: 2000),
                          width: MediaQuery.of(context).size.width,
                          placeholder:
                              AssetImage('assets/placeholder_image.jpg'),
                          image: AssetImage('assets/men.jpg')),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 117,
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(0)),
                        // depth: 2.5,
                        intensity: 1,
                        shadowDarkColor: Colors.grey[400],
                        shadowLightColor: Colors.grey[50],
                        // lightSource: LightSource.top,
                        color: Colors.white),
                    child: FadeInImage(
                        fit: BoxFit.fill,
                        fadeInDuration: Duration(milliseconds: 2000),
                        width: MediaQuery.of(context).size.width,
                        placeholder: AssetImage('assets/placeholder_image.jpg'),
                        image: AssetImage('assets/kids_cloth_banner.jpg')),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 117,
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(0)),
                        // depth: 2.5,
                        intensity: 1,
                        shadowDarkColor: Colors.grey[400],
                        shadowLightColor: Colors.grey[50],
                        // lightSource: LightSource.top,
                        color: Colors.white),
                    child: FadeInImage(
                        fit: BoxFit.fill,
                        fadeInDuration: Duration(milliseconds: 2000),
                        width: MediaQuery.of(context).size.width,
                        placeholder: AssetImage('assets/placeholder_image.jpg'),
                        image: AssetImage('assets/beauty_banner.jpg')),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 117,
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(0)),
                        // depth: 2.5,
                        intensity: 1,
                        shadowDarkColor: Colors.grey[400],
                        shadowLightColor: Colors.grey[50],
                        // lightSource: LightSource.top,
                        color: Colors.white),
                    child: FadeInImage(
                        fit: BoxFit.fill,
                        fadeInDuration: Duration(milliseconds: 2000),
                        width: MediaQuery.of(context).size.width,
                        placeholder: AssetImage('assets/placeholder_image.jpg'),
                        image: AssetImage('assets/luxe.jpg')),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 117,
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(0)),
                        // depth: 2.5,
                        intensity: 1,
                        shadowDarkColor: Colors.grey[400],
                        shadowLightColor: Colors.grey[50],
                        // lightSource: LightSource.top,
                        color: Colors.white),
                    child: FadeInImage(
                        fit: BoxFit.fill,
                        fadeInDuration: Duration(milliseconds: 2000),
                        width: MediaQuery.of(context).size.width,
                        placeholder: AssetImage('assets/placeholder_image.jpg'),
                        image: AssetImage('assets/accessories.jpg')),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 117,
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(0)),
                        // depth: 2.5,
                        intensity: 1,
                        shadowDarkColor: Colors.grey[400],
                        shadowLightColor: Colors.grey[50],
                        // lightSource: LightSource.top,
                        color: Colors.white),
                    child: FadeInImage(
                        fit: BoxFit.fill,
                        fadeInDuration: Duration(milliseconds: 2000),
                        width: MediaQuery.of(context).size.width,
                        placeholder: AssetImage('assets/placeholder_image.jpg'),
                        image: AssetImage('assets/corporate-gift.jpg')),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
