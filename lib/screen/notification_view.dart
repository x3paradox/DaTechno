import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
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
                    'Notification',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SimpleShadow(
                        child: GestureDetector(
                          // onTap: () {
                          //   Navigator.pop(context);
                          // },
                          child: CircleAvatar(
                            maxRadius: 25,
                            minRadius: 15,
                            backgroundColor: Color(0xff2473f2),
                            child: Icon(
                              Icons.list,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Text('Order'),
                    ],
                  ),
                  Column(
                    children: [
                      SimpleShadow(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: CircleAvatar(
                            maxRadius: 25,
                            minRadius: 15,
                            backgroundColor: Color(0xfffb8700),
                            child: Icon(
                              Icons.car_rental,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Text('Delivery'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              color: Color(0xffededed),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SimpleShadow(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        maxRadius: 25,
                        minRadius: 15,
                        backgroundColor: Color(0xfffb8700),
                        child: Icon(
                          Icons.car_rental,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 5, right: 0, bottom: 0, top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Order Arrived',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Yesterday',
                        style:
                            TextStyle(color: Color(0xff767676), fontSize: 18),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: 'Order ', style: TextStyle(fontSize: 18)),
                            TextSpan(
                                text: '#3480',
                                style: TextStyle(
                                    color: Colors.redAccent, fontSize: 18)),
                            TextSpan(
                                text: ' has been delivered',
                                style: TextStyle(fontSize: 18)),
                          ],
                        ),
                      ),
                      Text(
                        'at the detination address',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              color: Color(0xffededed),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SimpleShadow(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        maxRadius: 25,
                        minRadius: 15,
                        backgroundColor: Color(0xff2473f2),
                        child: Icon(
                          Icons.list,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 5, right: 0, bottom: 0, top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Order Success',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Yesterday',
                        style:
                            TextStyle(color: Color(0xff767676), fontSize: 18),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: 'Order ', style: TextStyle(fontSize: 18)),
                            TextSpan(
                                text: '#3480',
                                style: TextStyle(
                                    color: Colors.redAccent, fontSize: 18)),
                            TextSpan(
                                text: ' has been success',
                                style: TextStyle(fontSize: 18)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
