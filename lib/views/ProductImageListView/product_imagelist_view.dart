import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter_cube/flutter_cube.dart';

class ProductImageListView extends StatefulWidget {
  const ProductImageListView({Key? key}) : super(key: key);

  @override
  State<ProductImageListView> createState() => _ProductImageListViewState();
}

class _ProductImageListViewState extends State<ProductImageListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("widget.title"),
      ),
      body: Center(child: Cube(
        onSceneCreated: (Scene scene) {
          scene.world.add(Object(
              fileName:
                  'https://modelviewer.dev/shared-assets/models/Astronaut.glb'));
        },
      )),
    );
  }
}
