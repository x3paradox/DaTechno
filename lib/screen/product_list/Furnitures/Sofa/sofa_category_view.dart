import 'package:da_techno_app/screen/product_list/Furnitures/Sofa/fabric_sofa_category_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SofaCategoryView extends StatefulWidget {
  const SofaCategoryView({Key? key}) : super(key: key);

  @override
  State<SofaCategoryView> createState() => _SofaCategoryViewState();
}

class _SofaCategoryViewState extends State<SofaCategoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Sofas",
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
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/banner.jpg'),
            ),
            Container(
                color: Colors.grey[300],
                height: 25,
                width: MediaQuery.of(context).size.width),
            SizedBox(
              height: 10,
            ),
            Text(
              'SOFAS',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 325,
              child: GridView(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0.0,
                    mainAxisExtent: 160.0),
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FabricSofa()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        children: [
                          Container(
                            height: 109,
                            width: 189,
                            // clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                // color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/sofa1.png',
                                    ))),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            ' Fabric Sofa',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('45+ Options')
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        children: [
                          Container(
                            height: 109,
                            width: 189,
                            // clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                // color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      'assets/sofa4.png',
                                    ))),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'L-shaped Sofas',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('35+ Options')
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        children: [
                          Container(
                            height: 109,
                            width: 189,
                            // clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                // color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      'assets/sofa3.png',
                                    ))),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            ' Fabric Sofa',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('45+ Options')
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        children: [
                          Container(
                            height: 109,
                            width: 189,
                            // clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                // color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      'assets/sofa2.png',
                                    ))),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'L-shaped Sofas',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('35+ Options'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 20,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[300],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/banner2.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              height: 20,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[300],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'SOFAS BY SIZE',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 175,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: AlwaysScrollableScrollPhysics(),
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          children: [
                            // Container(
                            //   height: 109,
                            //   width: 189,
                            //   // clipBehavior: Clip.antiAlias,
                            //   decoration: BoxDecoration(
                            //       // color: Colors.white,
                            //       borderRadius: BorderRadius.circular(12),
                            //       image: DecorationImage(
                            //           fit: BoxFit.fill,
                            //           image: AssetImage(
                            //             'assets/sofa5.png',
                            //           ))),
                            // ),
                            Container(
                              width: 189,
                              height: 109,
                              child: Neumorphic(
                                style: NeumorphicStyle(
                                    shape: NeumorphicShape.concave,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(12)),
                                    // depth: 2.5,
                                    intensity: 1,
                                    shadowDarkColor: Colors.grey[400],
                                    shadowLightColor: Colors.grey[50],
                                    // lightSource: LightSource.top,
                                    color: Colors.white),
                                child: FadeInImage(
                                    placeholder: AssetImage(
                                        'assets/placeholder_image.jpg'),
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      'assets/sofa5.png',
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              ' 1 Seeter Sofa',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('40+ Options')
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          children: [
                            Container(
                              width: 189,
                              height: 109,
                              child: Neumorphic(
                                style: NeumorphicStyle(
                                    shape: NeumorphicShape.concave,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(12)),
                                    // depth: 2.5,
                                    intensity: 1,
                                    shadowDarkColor: Colors.grey[400],
                                    shadowLightColor: Colors.grey[50],
                                    // lightSource: LightSource.top,
                                    color: Colors.white),
                                child: FadeInImage(
                                    placeholder: AssetImage(
                                        'assets/placeholder_image.jpg'),
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      'assets/sofa6.png',
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              ' 2 Seeter Sofa',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('55+ Options')
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          children: [
                            Container(
                              width: 189,
                              height: 109,
                              child: Neumorphic(
                                style: NeumorphicStyle(
                                    shape: NeumorphicShape.concave,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(12)),
                                    // depth: 2.5,
                                    intensity: 1,
                                    shadowDarkColor: Colors.grey[400],
                                    shadowLightColor: Colors.grey[50],
                                    // lightSource: LightSource.top,
                                    color: Colors.white),
                                child: FadeInImage(
                                    placeholder: AssetImage(
                                        'assets/placeholder_image.jpg'),
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      'assets/sofa1.png',
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              ' 3 Seeter Sofa',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('55+ Options')
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
