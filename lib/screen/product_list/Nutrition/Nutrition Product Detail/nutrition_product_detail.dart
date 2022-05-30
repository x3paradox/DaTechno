import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fradio_nullsafety/fradio_nullsafety.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class NutritionProductDetailView extends StatefulWidget {
  const NutritionProductDetailView({Key? key}) : super(key: key);

  @override
  State<NutritionProductDetailView> createState() =>
      _NutritionProductDetailViewState();
}

class _NutritionProductDetailViewState
    extends State<NutritionProductDetailView> {
  final List<String> list = [
    'whey_3.png',
    'whey_3_1.jpg',
    'whey_3_2.jpg',
    'whey_3_3.jpg',
    'whey_3_4.jpg',
    'whey_3_5.jpg',
    'whey_3_6.jpg',
    'whey_3_7.jpg',
  ];
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<ImageProvider> _imageProviders = [
    Image.asset("assets/whey_3.png").image,
    Image.asset("assets/whey_3_1.jpg").image,
    Image.asset("assets/whey_3_2.jpg").image,
    Image.asset("assets/whey_3_3.jpg").image,
    Image.asset("assets/whey_3_4.jpg").image,
    Image.asset("assets/whey_3_5.jpg").image,
    Image.asset("assets/whey_3_6.jpg").image,
    Image.asset("assets/whey_3_7.jpg").image,
  ];

  List<String> productOverViewGram = [
    '24 g',
    '5.5 g',
    '4 g',
    '117',
    '79.0',
    '79.0',
  ];
  List<String> productOverViewCategory = [
    'Protein',
    'BCAA',
    'Glutamic acid',
    'Kcal',
    'Protein % per Serving',
    'Protein % per Serving'
  ];
  int groupValue_4 = 0;
  final List<String> sizeValue = [
    '2 lb',
    '4 lb',
    '6 lb',
    '8 lb',
    '12 lb',
    '16 lb'
  ];
  int groupValue_5 = 0;
  final List<String> flavourValue = [
    'Cookies & Cream',
    'Double Rich Chocolate Double Rich Chocolate',
    'Coffee',
    'Cookies & Cream',
    'Double Rich Chocolate Double Rich Chocolate',
    'Coffee',
  ];
  final List<String> generalDetailName = [
    'Weight',
    'Weight(kg)',
    'Protein % per Serving',
    'Price per kg',
    'Serving Size',
    'Vegetarian/Non-Vegetarian'
  ];
  final List<String> generalDetailValue = [
    '2 lb',
    '0.91',
    '79.0',
    '3756.5',
    '30.4g',
    'Vegetarian'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          // physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      MultiImageProvider multiImageProvider =
                          MultiImageProvider(_imageProviders);
                      showImageViewerPager(context, multiImageProvider);
                      // Cube(
                      //   onSceneCreated: (Scene scene) {
                      //     scene.world.add(Object(fileName: 'assets/bed_6.jpg'));
                      //   },
                      // );
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => ProductImageListView()),
                      // );
                    },
                    child: Container(
                      color: Colors.grey[300],
                      width: MediaQuery.of(context).size.width,
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: 318,
                          viewportFraction: 1,
                          autoPlay: true,
                          onPageChanged: (index, reason) {
                            setState(() {});
                          },
                        ),
                        items: list.map((item) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                // margin: EdgeInsets.symmetric(horizontal: 5.0),
                                width: 250,
                                decoration: BoxDecoration(),
                                child: FadeInImage(
                                    height: 200,
                                    width: 149,
                                    fit: BoxFit.fill,
                                    fadeInDuration:
                                        Duration(milliseconds: 5000),
                                    placeholder: AssetImage(
                                        'assets/placeholder_image.jpg'),
                                    image: AssetImage(
                                      'assets/$item',
                                    )),
                                // Image.asset(
                                //   'assets/$item',
                                //   fit: BoxFit.fill,
                                // )
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          maxRadius: 15,
                          minRadius: 15,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              maxRadius: 15,
                              minRadius: 15,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.favorite_border_outlined,
                                size: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          CircleAvatar(
                            maxRadius: 15,
                            minRadius: 15,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.share,
                              size: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 5,
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
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 12),
                child: AutoSizeText(
                  "ON(Optimum Nutrition) Gold Standard 100%",
                  style: TextStyle(fontSize: 17.5, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.justify,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  minFontSize: 17,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 5),
                child: AutoSizeText(
                  "Whey Protein, 5 lb Double Rich Chocolate",
                  style: TextStyle(fontSize: 17.5, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.justify,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  minFontSize: 17,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12, top: 15),
                    child: AutoSizeText(
                      '7,041',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 17.5,
                          color: Colors.black),
                      minFontSize: 17,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, top: 15),
                    child: AutoSizeText(
                      '4,499',
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontWeight: FontWeight.normal,
                          fontSize: 17.5,
                          color: Colors.black45),
                      minFontSize: 17,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 15),
                child: RatingBar.builder(
                  initialRating: 5,
                  minRating: 0.5,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 14.88,
                  // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    // size: 5,
                    color: Color(0xffFF8C4C),
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 5,
                color: Colors.grey[300],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 5),
                child: AutoSizeText(
                  "Select Variant",
                  style: TextStyle(fontSize: 17.5, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.justify,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  minFontSize: 17,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 5),
                child: Row(
                  children: [
                    AutoSizeText(
                      "Weight :",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black45),
                      textAlign: TextAlign.justify,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      minFontSize: 17,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.750,
                        child: sizeVariants()),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 5),
                child: Row(
                  children: [
                    AutoSizeText(
                      "Flavour :",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black45),
                      textAlign: TextAlign.justify,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      minFontSize: 17,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 5),
                child: flavourVariants(),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 5,
                color: Colors.grey[300],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 5),
                child: AutoSizeText(
                  "Overview",
                  style: TextStyle(fontSize: 17.5, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.justify,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  minFontSize: 17,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 20, right: 12),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffD9D9D9)),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 10, right: 10, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 6,
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AutoSizeText(
                                          "${productOverViewGram[index]}",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        AutoSizeText(
                                          "${productOverViewCategory[index]}",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal,
                                              color: Color(0xff6F6F6F)),
                                        ),
                                      ],
                                    ),
                                    VerticalDivider(
                                      thickness: 1,
                                      indent: 1,
                                      endIndent: 10,
                                    )
                                  ],
                                );
                              }),
                        ),
                        AutoSizeText(
                          "Per 30.4 g of 74 servings contains*",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                          minFontSize: 12,
                          maxFontSize: 15,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 5,
                color: Colors.grey[300],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 5),
                child: AutoSizeText(
                  "Details",
                  style: TextStyle(fontSize: 17.5, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.justify,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  minFontSize: 17,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  color: Color(0xffEDEDED),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 10, right: 10, bottom: 10),
                    child: AutoSizeText(
                      "General Traits",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      minFontSize: 12,
                      maxFontSize: 15,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: DataTable(
                    headingRowHeight: 0,
                    columns: const <DataColumn>[
                      DataColumn(
                        label: Text(
                          '',
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          '',
                        ),
                      ),
                    ],
                    rows: const <DataRow>[
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text(
                            'Weight',
                          )),
                          DataCell(Text('2 lb')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Weight(kg)')),
                          DataCell(Text('0.91')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Protein % per Serving')),
                          DataCell(Text('79.0')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Price per kg')),
                          DataCell(Text('3756.5')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Serving Size')),
                          DataCell(Text('30.4g')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Vegetarian/Non-Vegetarian')),
                          DataCell(Text('Vegetarian')),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 25,
              ),
              Container(
                height: 5,
                color: Colors.grey[300],
              ),
              // ListView.builder(
              //     scrollDirection: Axis.vertical,
              //     itemCount: 6,
              //     physics: NeverScrollableScrollPhysics(),
              //     shrinkWrap: true,
              //     itemBuilder: (context, index) {
              //       return Row(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         mainAxisAlignment: MainAxisAlignment.start,
              //         children: [
              //           Padding(
              //             padding: const EdgeInsets.only(
              //                 top: 10, left: 10, right: 10, bottom: 10),
              //             child: AutoSizeText("${generalDetailName[index]}"),
              //           ),
              //           SizedBox(
              //             width: MediaQuery.of(context).size.width * 0.1,
              //           ),
              //           Padding(
              //             padding: const EdgeInsets.only(
              //                 top: 10, left: 10, right: 10, bottom: 10),
              //             child: AutoSizeText("${generalDetailValue[index]}"),
              //           ),
              //         ],
              //       );
              //     }),
            ],
          ),
        ),
      ),
    );
  }

  List<Employee> getEmployeeData() {
    return [
      Employee(10001, 'James', 'Project Lead', 20000),
      Employee(10002, 'Kathryn', 'Manager', 30000),
      Employee(10003, 'Lara', 'Developer', 15000),
      Employee(10004, 'Michael', 'Designer', 15000),
      Employee(10005, 'Martin', 'Developer', 15000),
      Employee(10006, 'Newberry', 'Developer', 15000),
      Employee(10007, 'Balnc', 'Developer', 15000),
      Employee(10008, 'Perry', 'Developer', 15000),
      Employee(10009, 'Gable', 'Developer', 15000),
      Employee(10010, 'Grimes', 'Developer', 15000)
    ];
  }

  Widget sizeVariants() {
    return SizedBox(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: index == 4 ? 0 : 10),
              child: FRadio(
                width: 90,
                height: 40,
                corner: FRadioCorner(
                  leftTopCorner: 40,
                  leftBottomCorner: 40,
                  rightTopCorner: 40,
                  rightBottomCorner: 40,
                ),
                value: index + 1,
                groupValue: groupValue_4,
                onChanged: (value) {
                  setState(() {
                    groupValue_4 = value as int;
                  });
                },
                normalColor: Color(0xffD9D9D9),
                selectedColor: Color(0xff28a5de),
                hasSpace: false,
                border: 1.5,
                child: Text(
                  "${sizeValue[index]}",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
                hoverChild: Text(
                  "${sizeValue[index]}",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
                selectedChild: Text("${sizeValue[index]}",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400)),
              ),
            );
          }),
    );
  }

  Widget flavourVariants() {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: index == 4 ? 0 : 10),
              child: FRadio(
                width: 120,
                height: 75,
                toggleable: true,
                corner: FRadioCorner(
                  leftTopCorner: 12,
                  leftBottomCorner: 12,
                  rightTopCorner: 12,
                  rightBottomCorner: 12,
                ),
                value: index + 1,
                groupValue: groupValue_5,
                onChanged: (value) {
                  setState(() {
                    groupValue_5 = value as int;
                  });
                },
                normalColor: Color(0xffD9D9D9),
                selectedColor: Color(0xff28a5de),
                hasSpace: false,
                border: 1.5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AutoSizeText(
                    "${flavourValue[index]}",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                    minFontSize: 12,
                    maxFontSize: 15,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
                hoverChild: Text(
                  "${flavourValue[index]}",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
                selectedChild: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AutoSizeText(
                    "${flavourValue[index]}",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                    minFontSize: 12,
                    maxFontSize: 12,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class Employee {
  /// Creates the employee class with required details.
  Employee(this.id, this.name, this.designation, this.salary);

  /// Id of an employee.
  final int id;

  /// Name of an employee.
  final String name;

  /// Designation of an employee.
  final String designation;

  /// Salary of an employee.
  final int salary;
}

class EmployeeDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  EmployeeDataSource({required List<Employee> employeeData}) {
    _employeeData = employeeData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<int>(columnName: 'id', value: e.id),
              DataGridCell<String>(columnName: 'name', value: e.name),
              DataGridCell<String>(
                  columnName: 'designation', value: e.designation),
              DataGridCell<int>(columnName: 'salary', value: e.salary),
            ]))
        .toList();
  }

  List<DataGridRow> _employeeData = [];

  @override
  List<DataGridRow> get rows => _employeeData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(8.0),
        child: Text(e.value.toString()),
      );
    }).toList());
  }
}
