import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
// import 'package:wish_list/acordation.dart';

class OrderDetailsView extends StatefulWidget {
  const OrderDetailsView({Key? key}) : super(key: key);

  @override
  State<OrderDetailsView> createState() => _OrderDetailsViewState();
}

class _OrderDetailsViewState extends State<OrderDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
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
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Order Details',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 38,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffEDEDED),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Order Details',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Order:',
                          style: TextStyle(
                              color: Color(0xffa7a7a7),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '#3480',
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Processing',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    Row(
                      children: [
                        Text(
                          'Placed on:',
                          style: TextStyle(
                              color: Color(0xffa7a7a7),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '07-05-2022',
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 38,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffEDEDED),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Shiping Details',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'D-101, Vishal Nagar Society, Behind Vijay Dairy,Near Gujarat Gas Circle, Adajan, Surat,Gujarat -3592033',
                          style: TextStyle(
                              color: Color(0xffa7a7a7),
                              fontWeight: FontWeight.bold)),
                      Text('Adajan',
                          style: TextStyle(
                              color: Color(0xffa7a7a7),
                              fontWeight: FontWeight.bold)),
                      Text('Surat, Gujarat 395009',
                          style: TextStyle(
                              color: Color(0xffa7a7a7),
                              fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Text('Mobile:',
                              style: TextStyle(
                                  color: Color(0xffa7a7a7),
                                  fontWeight: FontWeight.bold)),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '9377604737',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 38,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffEDEDED),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Order Summery',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => acordionList()));
                      },
                      child: Image.asset(
                        'assets/mobile_wishlist.png',
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('OnePlus 10 Pro 5G',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Sold By: Bhatia',
                            style: TextStyle(
                                color: Color(0xffa7a7a7),
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 8,
                        ),
                        Text('Qty:1',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 8,
                        ),
                        Text('66,999',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 38,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffEDEDED),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Payment Method',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Cash On Delivery',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
