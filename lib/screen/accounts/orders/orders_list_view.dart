// import 'package:da_techno_app/screen/order/order_details_view.dart';
import 'package:da_techno_app/screen/accounts/orders/order_details_view.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
// import 'package:wish_list/orderdeatils.dart';

class OrderListView extends StatefulWidget {
  const OrderListView({Key? key}) : super(key: key);

  @override
  State<OrderListView> createState() => _OrderListViewState();
}

class _OrderListViewState extends State<OrderListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
                    'Orders',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  // the number of items in the list
                  itemCount: 20,

                  // display each item of the product list
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderDetailsView()),
                        );
                      },
                      child: Card(
                        // In many cases, the key isn't mandatory
                        key: UniqueKey(),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text('2022'),
                                  Text(
                                    '07',
                                    style: TextStyle(
                                        color: Colors.redAccent, fontSize: 18),
                                  ),
                                  Text('MAY'),
                                ],
                              ),
                              Text('Order: #3480'),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Total'),
                                  ),
                                  Text('66,999.00'),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
