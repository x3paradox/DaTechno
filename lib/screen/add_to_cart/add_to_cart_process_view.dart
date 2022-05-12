import 'package:da_techno_app/screen/accounts/orders/orders_list_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:simple_shadow/simple_shadow.dart';

class AddToCartProcessView extends StatefulWidget {
  const AddToCartProcessView({Key? key}) : super(key: key);

  @override
  State<AddToCartProcessView> createState() => _AddToCartProcessViewState();
}

class _AddToCartProcessViewState extends State<AddToCartProcessView> {
  int _activeCurrentStep = 0;

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController pincode = TextEditingController();

  List<Step> stepList() => [
        // This is step1 which is called Account.
        // Here we will fill our personal details
        Step(
          state:
              _activeCurrentStep <= 0 ? StepState.indexed : StepState.complete,
          isActive: _activeCurrentStep >= 0,
          title: const Text('Account'),
          content: Align(
            alignment: Alignment.topLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Deliver To:',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      Text(
                        'Vatsal Nagdivala, 1245689',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'CHANGES',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Vatsal Nagdivala, 1245689',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
                Container(
                  // width: MediaQuery.of(context).size.width,
                  height: 10,
                  color: Color(0xffededed),
                ),
                // Divider(
                //   thickness: 1,
                //   endIndent: 10,
                // ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xffFFEFDC),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You have got 1 item for 66,999',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 2.5, left: 2.5, right: 2.5, bottom: 2.5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/mobile_wishlist.png',
                                    width: 100,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('OnePlus 10 Pro 5G'),
                                      Text('Sold By: Bhatia'),
                                      Text(
                                        'Qty:1',
                                      ),
                                      Text(
                                        '66,999',
                                      ),
                                      Text('Delivery by 12 May 2022')
                                    ],
                                  ),
                                  SizedBox(
                                    width: 35,
                                  ),
                                  Icon(
                                    Icons.cancel,
                                    color: Color(0xffBDBDBD),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  // width: MediaQuery.of(context).size.width,

                  height: 30,
                  color: Color(0xffededed),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'COUPONS',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 35,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.done_all),
                          Text('Apply Coupon'),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                ),
                Container(
                  height: 22,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xffededed),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'PRICE DETAILS(1 Item)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(
                      thickness: 1.5,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total MRP',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('66,999')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Discount on MRP',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('-900')
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Coupon Discount',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('Apply Coupon'),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Convenience Fee',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('Free')
                          ]),
                    ),
                    Divider(
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text('Total Amount',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text('66,099',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // This is Step2 here we will enter our address
        Step(
          state:
              _activeCurrentStep <= 1 ? StepState.indexed : StepState.complete,
          isActive: _activeCurrentStep >= 1,
          title: const Text('Address'),
          content: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vatsal Navdiwala ',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '(Default)',
                        style: TextStyle(
                            fontSize: 17,
                            // fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      )
                    ],
                  ),
                  Text(
                      'D-101, Vishal Nagar Society, Behind Vijay Dairy,Near Gujarat Gas Circle, Adajan, Surat,Gujarat - 395009',
                      style: TextStyle(
                          fontSize: 17,
                          // fontWeight: FontWeight.bold,
                          color: Colors.grey)),
                  Text(
                    'Adajan',
                    style: TextStyle(
                        fontSize: 17,
                        // fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  Text('Surat, Gujarat 395009',
                      style: TextStyle(
                          fontSize: 17,
                          // fontWeight: FontWeight.bold,
                          color: Colors.grey)),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mobile: ',
                          style: TextStyle(
                              fontSize: 17,
                              // fontWeight: FontWeight.bold,
                              color: Colors.grey)),
                      Text(
                        '9377604737',
                        style: TextStyle(
                          fontSize: 17,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 50),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        // color: Color(0xffff4e00),
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        // shape: BoxShape.circle,
                      ),
                      child: CupertinoButton(
                        child: const Text(
                          'CHANGE OR ADD ADDRESS',
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () {
                          if (_activeCurrentStep < (stepList().length - 1)) {
                            setState(() {
                              _activeCurrentStep += 1;
                            });
                          }
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 45,
                    color: Color(0xffEDEDED),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'DELIVERY ESTIMATES',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Image.asset('assets/mobile_wishlist.png'),
                        Text(
                          'Estimated delivery by ',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '12 May 2022',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    color: Color(0xffEDEDED),
                    child: Align(
                      alignment: Alignment.topLeft,
                      // child: Text(
                      //   'DELIVERY ESTIMATES',
                      //   style: TextStyle(fontWeight: FontWeight.bold),
                      // ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'PRICE DETAILS(1 Item)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(
                        thickness: 1.5,
                        indent: 10,
                        endIndent: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total MRP',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('66,999')
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Discount on MRP',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('-900')
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Coupon Discount',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('Apply Coupon'),
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Convenience Fee',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('Free')
                            ]),
                      ),
                      Divider(
                        thickness: 1,
                        indent: 10,
                        endIndent: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text('Total Amount',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text('66,099',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        // This is Step3 here we will display all the details
        // that are entered by the user
        Step(
            state: StepState.complete,
            isActive: _activeCurrentStep >= 2,
            title: const Text('Confirm'),
            content: Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Name: ${name.text}'),
                Text('Email: ${email.text}'),
                Text('Password: ${pass.text}'),
                Text('Address : ${address.text}'),
                Text('PinCode : ${pincode.text}'),
              ],
            )))
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // height: MediaQuery.of(context).size.height * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      'Cart',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Stepper(
                  margin: EdgeInsets.zero,

                  type: StepperType.horizontal,
                  currentStep: _activeCurrentStep,

                  steps: stepList(),

                  // onStepContinue takes us to the next step
                  onStepContinue: () {
                    if (_activeCurrentStep < (stepList().length - 1)) {
                      setState(() {
                        _activeCurrentStep += 1;
                      });
                    }
                  },

                  // onStepCancel takes us to the previous step
                  onStepCancel: () {
                    if (_activeCurrentStep == 0) {
                      return;
                    }

                    setState(() {
                      _activeCurrentStep -= 1;
                    });
                  },
                  controlsBuilder: (context, onStepContinue) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 50, bottom: 12.5),
                      child: Center(
                          // Padding(
                          //   padding: const EdgeInsets.only(
                          //       top: 50, left: 25, right: 25, bottom: 12.5),
                          child: _activeCurrentStep == 0
                              ? SimpleShadow(
                                  opacity: 0.6,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.75,
                                    height: 53,
                                    decoration: BoxDecoration(
                                      color: Color(0xffff4e00),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      // shape: BoxShape.circle,
                                    ),
                                    child: CupertinoButton(
                                      child: const Text(
                                        'PLACE ORDER',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {
                                        if (_activeCurrentStep <
                                            (stepList().length - 1)) {
                                          setState(() {
                                            _activeCurrentStep += 1;
                                          });
                                        }
                                      },
                                    ),
                                  ),
                                )
                              : _activeCurrentStep == 1
                                  ?
                                  // SimpleShadow(
                                  //     child: Padding(
                                  //       padding: const EdgeInsets.symmetric(
                                  //           horizontal: 10.0, vertical: 50),
                                  //       child: Container(
                                  //         width:
                                  //             MediaQuery.of(context).size.width,
                                  //         decoration: BoxDecoration(
                                  //           color: Color(0xffff4e00),
                                  //           borderRadius: BorderRadius.all(
                                  //               Radius.circular(10)),
                                  //           // shape: BoxShape.circle,
                                  //         ),
                                  //         child: CupertinoButton(
                                  //           child: const Text(
                                  //             'Continue',
                                  //             style: TextStyle(
                                  //                 color: Colors.white),
                                  //           ),
                                  //           onPressed: () {
                                  //             if (_activeCurrentStep <
                                  //                 (stepList().length - 1)) {
                                  //               setState(() {
                                  //                 _activeCurrentStep += 1;
                                  //               });
                                  //             }
                                  //           },
                                  //         ),
                                  //       ),
                                  //     ),
                                  //   )
                                  SimpleShadow(
                                      opacity: 0.6,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.75,
                                        height: 53,
                                        decoration: BoxDecoration(
                                          color: Color(0xffff4e00),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          // shape: BoxShape.circle,
                                        ),
                                        child: CupertinoButton(
                                          child: const Text(
                                            'CONTINUE',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            if (_activeCurrentStep <
                                                (stepList().length - 1)) {
                                              setState(() {
                                                _activeCurrentStep += 1;
                                              });
                                            }
                                          },
                                        ),
                                      ),
                                    )
                                  : SimpleShadow(
                                      opacity: 0.6,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.75,
                                        height: 53,
                                        decoration: BoxDecoration(
                                          color: Color(0xffff4e00),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          // shape: BoxShape.circle,
                                        ),
                                        child: CupertinoButton(
                                          child: const Text(
                                            'PAY',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      OrderListView()),
                                            );
                                          },
                                        ),
                                      ),
                                    )
                          // : SimpleShadow(
                          //     child: Padding(
                          //       padding: const EdgeInsets.symmetric(
                          //           horizontal: 10.0, vertical: 50),
                          //       child: Container(
                          //         width:
                          //             MediaQuery.of(context).size.width,
                          //         decoration: BoxDecoration(
                          //           color: Color(0xffff4e00),
                          //           borderRadius: BorderRadius.all(
                          //               Radius.circular(10)),
                          //           // shape: BoxShape.circle,
                          //         ),
                          //         child: CupertinoButton(
                          //           child: const Text(
                          //             'PAY',
                          //             style:
                          //                 TextStyle(color: Colors.white),
                          //           ),
                          //           onPressed: () {
                          //             Navigator.push(
                          //               context,
                          //               MaterialPageRoute(
                          //                   builder: (context) =>
                          //                       const order()),
                          //             );
                          //             // if (_activeCurrentStep <
                          //             //     (stepList().length - 1)) {
                          //             //   setState(() {
                          //             //     _activeCurrentStep += 1;
                          //             //   });
                          //             // }
                          //           },
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          ),
                    );
                  },

                  // onStepTap allows to directly click on the particular step we want
                  // onStepTapped: (int index) {
                  //   setState(() {
                  //     _activeCurrentStep = index;
                  //   });
                  // },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
