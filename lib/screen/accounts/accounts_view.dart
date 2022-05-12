import 'package:avatars/avatars.dart';
import 'package:da_techno_app/screen/accounts/faqs_view.dart';
import 'package:da_techno_app/screen/accounts/orders/orders_list_view.dart';
import 'package:da_techno_app/screen/accounts/profile/update_profile_view.dart';
import 'package:da_techno_app/screen/home/wishlist_view/wishlist_view.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class AccountView extends StatefulWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffededed),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Profile',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 250,
                              width: MediaQuery.of(context).size.width,
                              child: Image(
                                  image: AssetImage('assets/background.png'),
                                  fit: BoxFit.cover),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                        Positioned(
                          top: 220,
                          // top: 250,
                          left: MediaQuery.of(context).size.width * 0.1,

                          child: Avatar(
                            elevation: 4,
                            // loader: Text('HI'),
                            placeholderColors: [
                              Color(0xffff4e00),
                              Color(0xffff4e00),
                              Color(0xffff4e00),
                            ],
                            // backgroundColor: Colors.black,
                            name: 'Aayush Shah',
                            textStyle: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            shape: AvatarShape.rectangle(
                              60,
                              60,
                              BorderRadius.all(
                                new Radius.circular(10.0),
                              ),
                            ),
                          ),
                          // Avatar(value: '89'),
                          // Container(
                          //   child: Text('AS'),
                          //   color: Colors.green,
                          // ),
                        ),
                        Positioned(
                          top: 250,
                          left: MediaQuery.of(context).size.width * 0.1 + 70,
                          child: Text(
                            'Aayush Shah',
                            style: TextStyle(fontSize: 25),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderListView()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.card_giftcard,
                                  color: Colors.black87,
                                  size: 27.5,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Orders',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Check your order status',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Icon(Icons.keyboard_arrow_right_rounded),
                        ],
                      ),
                    ),
                    Divider(
                      height: 1,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WishListPage()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.black87,
                                  size: 27.5,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Wishlist',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Your most loved styles',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Icon(Icons.keyboard_arrow_right_rounded),
                        ],
                      ),
                    ),
                    Divider(
                      height: 1,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UpdateProfileView()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.switch_account_rounded,
                                  color: Colors.black87,
                                  size: 27.5,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Profile Details',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Change your profile details & passwords',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Icon(Icons.keyboard_arrow_right_rounded),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FAQsView()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 70),
                        child: Text('FAQs'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 70),
                      child: Text('ABOUT US'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 70),
                      child: Text('TERMS OF USE'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 70),
                      child: Text('PRIVACY POLICY'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
