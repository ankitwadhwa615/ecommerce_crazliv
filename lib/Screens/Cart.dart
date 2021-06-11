import 'package:ecommerce_crazliv/Icon/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_crazliv/Constants.dart';
import 'package:flutter/rendering.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
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
          productsList(),
          bill(),
          checkOutButton()
        ]),
      ),
    );
  }


  Widget productsList(){
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
                height: 170,
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
                            flex: 1,
                            child: SizedBox(
                                height: 70,
                                width: 50,
                                child:
                                Image.asset(products[index]['url'])),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
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
                                  height: 10,
                                ),
                                Text(
                                  '₹${products[index]['price']}',
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
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 35.0,
                            width: 35,
                            child: RaisedButton(
                              elevation: 0.5,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(0.0),
                                  side: BorderSide(
                                      color: Colors.grey, width: 0.5)),
                              onPressed: () {
                                setState(() {
                                  if (products[index]['quantity'] > 1) {
                                    products[index]['quantity'] -= 1;
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
                                vertical: BorderSide(
                                    color: Colors.grey, width: 0.5),
                                horizontal: BorderSide(
                                    color: Colors.grey, width: 0.5),
                              ),
                              borderRadius: BorderRadius.circular(0),
                            ),
                            child: Center(
                              child: Text(
                                products[index]['quantity'].toString(),
                                style: TextStyle(
                                    color: black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            height: 35.0,
                            width: 35,
                            child: RaisedButton(
                              elevation: 0.5,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(0.0),
                                  side: BorderSide(
                                      color: Colors.grey, width: 0.5)),
                              onPressed: () {
                                setState(() {
                                  products[index]['quantity'] += 1;
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
                            width: 20,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.delete,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                  Text(
                                    'Remove',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              )),
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
  Widget bill(){
    return Padding(
      padding: const EdgeInsets.all(19.0),
      child: Container(
          height: 170,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child:Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Text('Product Quantity:', style: TextStyle(
                        fontSize: 16,
                        color: black,
                        fontFamily: 'Quicksand',
                      ),),
                      Text('2',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                    ]
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Text('Product Price:', style: TextStyle(
                        fontSize: 16,
                        color: black,
                        fontFamily: 'Quicksand',
                      ),),
                      Text('₹200000',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                    ]
                ),
                SizedBox(height: 10,),
                Divider(color: Colors.grey,),
                SizedBox(height: 10,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Text('Total:', style: TextStyle(
                        fontSize: 19,
                        color: black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand',
                      ),),
                      Text('₹400000',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                    ]
                ),
              ],
            ),
          )
      ),
    );
  }
  Widget checkOutButton(){
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: MaterialButton(
        onPressed: () {
        },
        color: black,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Proceed to checkout',
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
