// @dart=2.9
import 'package:ecommerce_crazliv/Constants.dart';
import 'package:ecommerce_crazliv/Screens/ProductDetailScreen.dart';
import 'package:flutter/material.dart';
class CategorisedProductsScreen extends StatefulWidget {
  final String subCategory;
  CategorisedProductsScreen({@required this.subCategory});
  @override
  _CategorisedProductsScreenState createState() => _CategorisedProductsScreenState();
}

class _CategorisedProductsScreenState extends State<CategorisedProductsScreen> {
  List productsList = [
    {
      'title': 'Apple iphone 12',
      'price': 115999,
      'mrp': 119900.00,
      'description': '8GB RAM 128GB LTE',
      'url': 'images/p1.jpg'
    },
    {
      'title': 'HeadPhones',
      'price': 4999,
      'mrp': 6999,
      'description': '',
      'url': 'images/eg-2.jpg'
    },
    {
      'title': 'Apple iphone 12',
      'price': 115999,
      'mrp': 119900.00,
      'description': '8GB RAM 128GB LTE',
      'url': 'images/p1.jpg'
    },
    {
      'title': 'Apple iphone 12',
      'price': 115999,
      'mrp': 119900.00,
      'description': '8GB RAM 128GB LTE',
      'url': 'images/p1.jpg'
    },
    {
      'title': 'HeadPhones',
      'price': 4999,
      'mrp': 6999,
      'description': '',
      'url': 'images/eg-2.jpg'
    },
    {
      'title': 'Apple iphone 12',
      'price': 115999,
      'mrp': 119900.00,
      'description': '8GB RAM 128GB LTE',
      'url': 'images/p1.jpg'
    },
    {
      'title': 'HeadPhones',
      'price': 4999,
      'mrp': 6999,
      'description': '',
      'url': 'images/eg-2.jpg'
    },
    {
      'title': 'Apple iphone 12',
      'price': 115999,
      'mrp': 119900.00,
      'description': '8GB RAM 128GB LTE',
      'url': 'images/p1.jpg'
    },
    {
      'title': 'HeadPhones',
      'price': 4999,
      'mrp': 6999,
      'description': '',
      'url': 'images/eg-2.jpg'
    },
  ];
  @override
  void initState() {
    super.initState();
    print(widget.subCategory);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GridView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: productsList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0,
            childAspectRatio: 0.75),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductDetails()));
            },
            child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: new DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          '${productsList[index]['url']}',
                        )
                    ),
                    color: black,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                          )),
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 6,
                                ),
                                Flexible(
                                    child: Text(
                                      '${productsList[index]['title']}',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'QuickSand',
                                          color: Colors.black),
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                    )),
                              ],
                            ),
                            Flexible(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    '₹',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Flexible(
                                      child: Text(
                                        productsList[index]['price'].toString(),
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                        softWrap: true,
                                        overflow: TextOverflow.fade,
                                      )),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    productsList[index]['mrp'].toString(),
                                    style: TextStyle(
                                        decoration:
                                        TextDecoration.lineThrough,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black54),
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          );
        },
      ),
    );
  }
}
