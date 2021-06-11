import 'package:ecommerce_crazliv/Icon/my_flutter_app_icons.dart';
import 'package:ecommerce_crazliv/Screens/ProductDetailScreen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_crazliv/Constants.dart';
import 'package:flutter/rendering.dart';

class MyOrders extends StatefulWidget {
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  List products = [
    {
      'title': 'Apple iphone 12',
      'price': 124999,
      'quantity': 1,
      'description': '8GB RAM 128GB LTE',
      'url': 'images/eg-1.jpg'
    },
    {
      'title': 'HeadPhones',
      'price': 4999,
      'quantity': 1,
      'description': '',
      'url': 'images/eg-2.jpg'
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
          'Back to Home',
          style: TextStyle(
            color: black,
            fontFamily: 'Quicksand',
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(children: [
          orderedProductsList(),
        ]),
      ),
    );
  }

  Widget orderedProductsList() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(7.0),
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
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => ProductDetails()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                  height: 70,
                                  width: 50,
                                  child: Image.asset(products[index]['url'])),
                            ),
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    products[index]['title'],
                                    style: TextStyle(
                                        color: black,
                                        fontFamily: 'Quicksand',
                                        fontSize: 18),
                                    textAlign: TextAlign.left,
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    products[index]['description'],
                                    style: TextStyle(
                                        color: black,
                                        fontFamily: 'Quicksand',
                                        fontSize: 16),
                                    textAlign: TextAlign.left,
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'Delivered on 31-May-2021',
                                    style: TextStyle(
                                        color: black,
                                        fontFamily: 'Quicksand',
                                        fontSize: 14),
                                    textAlign: TextAlign.left,
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: RaisedButton(
                          elevation: 0.5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                              side: BorderSide(color: Colors.grey, width: 0.5)),
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) => ProductDetails()));
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          child: Text(
                            'Buy it again',
                            style: TextStyle(
                                color: black,
                                fontFamily: 'Quicksand',
                                fontSize: 16),
                            textAlign: TextAlign.left,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: RaisedButton(
                          elevation: 0.5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                              side: BorderSide(color: Colors.grey, width: 0.5)),
                          onPressed: () {},
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          child: Text(
                            'View order details',
                            style: TextStyle(
                                color: black,
                                fontFamily: 'Quicksand',
                                fontSize: 16),
                            textAlign: TextAlign.left,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
