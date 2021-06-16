// @dart=2.9
import 'package:ecommerce_crazliv/Icon/my_flutter_app_icons.dart';
import 'package:ecommerce_crazliv/Screens/Cart.dart';
import 'package:ecommerce_crazliv/Screens/CategorisedScreen.dart';
import 'package:ecommerce_crazliv/Screens/MyAccount.dart';
import 'package:ecommerce_crazliv/Screens/MyOrders.dart';
import 'package:ecommerce_crazliv/Screens/NotificationScreen.dart';
import 'package:ecommerce_crazliv/Screens/ProductDetailScreen.dart';
import 'package:ecommerce_crazliv/Screens/Wishlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_crazliv/Constants.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  List<AssetImage> images = [
    AssetImage('images/c1.jpeg'),
    AssetImage('images/c2.jpeg'),
    AssetImage('images/c3.jpeg'),
  ];
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
      'title': 'HeadPhones',
      'price': 4999,
      'mrp': 6999,
      'description': '',
      'url': 'images/eg-2.jpg'
    },
  ];
  List categories = [
    {
      'title': 'Men',
      'url': 'images/men.jpeg',
    },
    {
      'title': 'Women',
      'url': 'images/women.jpeg',
    },
    {
      'title': 'kids',
      'url': 'images/kids.jpeg',
    },
    {
      'title': 'Beauty',
      'url': 'images/beauty.jpeg',
    },
    {
      'title': 'Home',
      'url': 'images/home.jpeg',
    },
    {
      'title': 'Footwear',
      'url': 'images/footwear.jpeg',
    },
    {
      'title': 'Gadgets',
      'url': 'images/gadget.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: darkWhite.withOpacity(0.97),
      drawer: myDrawer(),
      appBar: myAppBar(),
      body: SingleChildScrollView(
        child:Column(
                      children: [
                        searchBar(),
                        carousel(),
                        category(),
                        products(),
                        SizedBox(
                          height: 50,
                        )
                      ],
          )
      ),
    );
  }

  Widget myDrawer() {
    return Drawer(
      child: Container(
        color: black,
        child: ListView(children: [
          Container(
            height: 100,
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                  radius: 23,
                  backgroundColor: lightWhite,
                  child: CircleAvatar(
                    child: Icon(
                      Icons.person,
                      color: lightWhite,
                      size: 30,
                    ),
                    radius: 22,
                    backgroundColor: black,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Hello, Ankit',
                  style: TextStyle(
                      color: lightWhite,
                      fontSize: 22,
                      fontFamily: 'PatrickHand'),
                )
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MyAccount()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.account_circle,
                    color: lightWhite,
                    size: 26,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'My Account',
                    style: TextStyle(
                        color: lightWhite,
                        fontSize: 20,
                        fontFamily: 'PatrickHand'),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => WishList()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.favorite,
                    color: lightWhite,
                    size: 26,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'My Wishlist',
                    style: TextStyle(
                        color: lightWhite,
                        fontSize: 20,
                        fontFamily: 'PatrickHand'),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Cart()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.shopping_cart,
                    color: lightWhite,
                    size: 26,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'My Cart',
                    style: TextStyle(
                        color: lightWhite,
                        fontSize: 20,
                        fontFamily: 'PatrickHand'),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MyOrders()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    MyFlutterApp.dropbox,
                    color: lightWhite,
                    size: 26,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'My Orders',
                    style: TextStyle(
                        color: lightWhite,
                        fontSize: 20,
                        fontFamily: 'PatrickHand'),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            thickness: 0.6,
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.support_agent,
                    color: lightWhite,
                    size: 26,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Support',
                    style: TextStyle(
                        color: lightWhite,
                        fontSize: 20,
                        fontFamily: 'PatrickHand'),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.info,
                    color: lightWhite,
                    size: 26,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'About us',
                    style: TextStyle(
                        color: lightWhite,
                        fontSize: 20,
                        fontFamily: 'PatrickHand'),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.logout,
                    color: lightWhite,
                    size: 26,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Log Out',
                    style: TextStyle(
                        color: lightWhite,
                        fontSize: 20,
                        fontFamily: 'PatrickHand'),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  PreferredSizeWidget myAppBar() {
    return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(2.0),
          child: IconButton(
              onPressed: () {
                _key.currentState.openDrawer();
              },
              icon: Icon(
                Icons.short_text,
                size: 42,
                color: black,
              )),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => WishList()));
                },
                icon: Icon(
                  Icons.favorite_outline,
                  size: 28,
                  color: black,
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Cart()));
                },
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  size: 28,
                  color: black,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0, right: 6, bottom: 2.0),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => NotificationScreen()));
                },
                icon: Icon(
                  Icons.notifications_none,
                  size: 28,
                  color: black,
                )),
          )
        ]);
  }

  Widget searchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.black38.withAlpha(10),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                autofocus: false,
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 18,
                    color: Colors.black.withAlpha(120),
                  ),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                style: TextStyle(
                  color: black,
                  fontFamily: 'Quicksand',
                  fontSize: 20,
                ),
                cursorColor: black,
                cursorHeight: 24,
              ),
            ),
            Icon(
              Icons.search,
              color: Colors.black.withAlpha(120),
            )
          ],
        ),
      ),
    );
  }

  Widget category() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              'Categories:',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 18,
                color: black,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
        SizedBox(
          height: 6.0,
        ),
        SizedBox(
          height: 110,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: GestureDetector(
                    onTap:(){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => CategorisedScreen(category: categories[index]['title'],)));
                    },
                    child: Container(
                        width: 160,
                        decoration: BoxDecoration(
                            image: new DecorationImage(
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.dstATop),
                                image: AssetImage(categories[index]['url'])),
                            color: black,
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 37.0, left: 15),
                          child: Text(
                            categories[index]['title'],
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 16,
                                color: Colors.white,
                                letterSpacing: 1.0),
                          ),
                        )),
                  ),
                );
              }),
        ),
      ],
    );
  }

  Widget carousel() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        child: Carousel(
            autoplayDuration: Duration(seconds: 6),
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            dotSize: 4.0,
            dotBgColor: Colors.transparent,
            autoplay: true,
            images: images),
      ),
    );
  }

  Widget products() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Trending:',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 18,
                  color: black,
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          SizedBox(
            height: 6.0,
          ),
          Container(
              padding: EdgeInsets.all(6.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
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
              )),
        ],
      ),
    );
  }
}
