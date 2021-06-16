// @dart=2.9
import 'package:ecommerce_crazliv/Icon/my_flutter_app_icons.dart';
import 'package:ecommerce_crazliv/Screens/AddressScreen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_crazliv/Constants.dart';
import 'package:flutter/rendering.dart';

class OrderSummary extends StatefulWidget {
  final List products;
  OrderSummary({@required this.products});
  @override
  _OrderSummaryState createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  List addresses = [
    {
      'name': 'Ankit Wadhwa',
      'address': '123-A model town',
      'city': 'Yamunanagar',
      'pinCode': '135001',
      'state': 'Haryana',
      'country': 'India',
      'mobile': '1234567890',
      'type': 'Home'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: darkWhite.withOpacity(0.97),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6),
          child: TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        side: BorderSide(color: Colors.black12)))),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Center(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black54,
                size: 20,
              ),
            ),
          ),
        ),
        title: Text(
          'Order Summary',
          style: TextStyle(
            color: black,
            fontFamily: 'Quicksand',
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(children: [
          address(),
          product(),
          bill(),
          button('Proceed to checkout', () {})
        ]),
      ),
    );
  }

  Widget address() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: addresses.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                  height: 270,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${addresses[index]['type']}:',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${addresses[index]['name']}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Text(
                              '${addresses[index]['address']}',
                              style: TextStyle(
                                fontSize: 16,
                                color: black,
                                fontFamily: 'Quicksand',
                              ),
                            ),
                            Text(
                              '${addresses[index]['city']} ${addresses[index]['pinCode']}',
                              style: TextStyle(
                                fontSize: 16,
                                color: black,
                                fontFamily: 'Quicksand',
                              ),
                            ),
                            Text(
                              '${addresses[index]['state']}',
                              style: TextStyle(
                                fontSize: 16,
                                color: black,
                                fontFamily: 'Quicksand',
                              ),
                            ),
                            Text(
                              '${addresses[index]['country']}',
                              style: TextStyle(
                                fontSize: 16,
                                color: black,
                                fontFamily: 'Quicksand',
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Mobile: ',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: black,
                                    fontFamily: 'Quicksand',
                                  ),
                                ),
                                Text(
                                  '${addresses[index]['mobile']}',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                            child: button('Change or Add Address', () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return AddressScreen();
                          }));
                        }))
                      ],
                    ),
                  )),
            );
          }),
    );
  }

  Widget product() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: widget.products.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(7.0),
              child: Container(
                height: 156,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.products[index]['title'],
                                  style: TextStyle(
                                      color: black,
                                      fontFamily: 'Quicksand',
                                      fontSize: 18),
                                  textAlign: TextAlign.left,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  widget.products[index]['description'],
                                  style: TextStyle(
                                      color: black,
                                      fontFamily: 'Quicksand',
                                      fontSize: 16),
                                  textAlign: TextAlign.left,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '₹${widget.products[index]['price']}',
                                  style: TextStyle(
                                      color: black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,
                                  softWrap: true,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                                height: 70,
                                width: 50,
                                child:
                                    Image.asset(widget.products[index]['url'])),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 35.0,
                            width: 35,
                            // ignore: deprecated_member_use
                            child: RaisedButton(
                              elevation: 0.5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0.0),
                                  side: BorderSide(
                                      color: Colors.grey, width: 0.5)),
                              onPressed: () {
                                setState(() {
                                  if (widget.products[index]['quantity'] > 1) {
                                    widget.products[index]['quantity'] -= 1;
                                  }
                                });
                              },
                              padding: EdgeInsets.all(10.0),
                              color: Colors.white,
                              child: Icon(
                                MyFlutterApp.minus,
                                color: black,
                                size: 12,
                              ),
                            ),
                          ),
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              border: Border.symmetric(
                                vertical:
                                    BorderSide(color: Colors.grey, width: 0.5),
                                horizontal:
                                    BorderSide(color: Colors.grey, width: 0.5),
                              ),
                              borderRadius: BorderRadius.circular(0),
                            ),
                            child: Center(
                              child: Text(
                                widget.products[index]['quantity'].toString(),
                                style: TextStyle(
                                    color: black, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            height: 35.0,
                            width: 35,
                            // ignore: deprecated_member_use
                            child: RaisedButton(
                              elevation: 0.5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0.0),
                                  side: BorderSide(
                                      color: Colors.grey, width: 0.5)),
                              onPressed: () {
                                setState(() {
                                  widget.products[index]['quantity'] += 1;
                                });
                              },
                              padding: EdgeInsets.all(10.0),
                              color: Colors.white,
                              child: Icon(
                                MyFlutterApp.plus,
                                color: black,
                                size: 12,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }

  Widget bill() {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
          height: 170,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Price Details:',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontFamily: 'Quicksand',
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 0.2,
                  color: Colors.grey,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Quantity:',
                        style: TextStyle(
                          fontSize: 16,
                          color: black,
                          fontFamily: 'Quicksand',
                        ),
                      ),
                      Text(
                        '2',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Price:',
                        style: TextStyle(
                          fontSize: 16,
                          color: black,
                          fontFamily: 'Quicksand',
                        ),
                      ),
                      Text(
                        '₹200000',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Charges:',
                        style: TextStyle(
                          fontSize: 16,
                          color: black,
                          fontFamily: 'Quicksand',
                        ),
                      ),
                      Text(
                        'FREE',
                        style: TextStyle(color: Colors.green, fontSize: 16),
                      ),
                    ]),
                SizedBox(
                  height: 5,
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.2,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total:',
                        style: TextStyle(
                          fontSize: 19,
                          color: black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Quicksand',
                        ),
                      ),
                      Text(
                        '₹400000',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ]),
              ],
            ),
          )),
    );
  }

  Widget button(String title, Function onPressed) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: MaterialButton(
        onPressed: () {
          onPressed();
        },
        color: black,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'Quicksand',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
