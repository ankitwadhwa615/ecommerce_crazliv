import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommerce_crazliv/Constants.dart';
import 'package:ecommerce_crazliv/Screens/Cart.dart';
import 'package:ecommerce_crazliv/Screens/Wishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  bool favourite=false;
  List<AssetImage> images = [
    AssetImage('images/p1.jpg'),
    AssetImage('images/p2.jpg'),
    AssetImage('images/p3.jpg'),
    AssetImage('images/p4.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: Colors.white,
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
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WishList()));
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
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Cart()));
                  },
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                    size: 28,
                    color: black,
                  )),
            ),
            SizedBox(width: 10,)
          ]
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.5,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
              child: Stack(
                children:[
                  carousel(),
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: CircleAvatar(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: (){
                          setState(() {
                            favourite=!favourite;
                          });

                        },
                        icon: favourite?Icon(Icons.favorite,size: 26,color: Colors.red,):Icon(Icons.favorite_outline,size: 26,color: Colors.black,),
                      ),
                      radius: 21,
                    ),
                    radius: 21.5,
                    backgroundColor: Colors.grey,

                ),
                  )
                ]

              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 8),
              child: Row(
                children: [
                  Text('₹',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Colors.black),softWrap: true,overflow: TextOverflow.ellipsis,),
                  Text('1,15,999',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.black),softWrap: true,overflow: TextOverflow.ellipsis,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Text('MRP: ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black54),softWrap: true,overflow: TextOverflow.ellipsis,),
                  Text('₹ 1,19,900.00',style: TextStyle(decoration: TextDecoration.lineThrough,fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black54),softWrap: true,overflow: TextOverflow.ellipsis,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text('New Apple iPhone 12 Pro (128GB) - Pacific Blue',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),softWrap: true,overflow: TextOverflow.clip,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
              child: RatingBarIndicator(
                rating: 4.0,
                itemBuilder: (context, index) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                itemCount: 5,
                unratedColor: Colors.grey,
                itemSize: 20.0,
                direction: Axis.horizontal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 36.0,
                    width: 80,
                    child: RaisedButton(
                      elevation: 0.5,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(0.0),
                          side: BorderSide(
                              color: Colors.grey, width: 0.5)),
                      onPressed: () {
                      },
                      padding: EdgeInsets.all(10.0),
                      color: Colors.white,
                      child: Text('64 GB',style: TextStyle(color: black),softWrap: true,overflow: TextOverflow.fade,)
                    ),
                  ),
                  Container(
                    height: 36.0,
                    width: 80,
                    child: RaisedButton(
                        elevation: 0.5,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(0.0),
                            side: BorderSide(
                                color: Colors.grey, width: 0.5)),
                        onPressed: () {
                        },
                        padding: EdgeInsets.all(10.0),
                        color: Colors.white,
                        child: Text('128 GB',style: TextStyle(color: black),softWrap: true,overflow: TextOverflow.fade,)
                    ),
                  ),
                  Container(
                    height: 36.0,
                    width: 80,
                    child: RaisedButton(
                        elevation: 0.5,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(0.0),
                            side: BorderSide(
                                color: Colors.grey, width: 0.5)),
                        onPressed: () {
                        },
                        padding: EdgeInsets.all(10.0),
                        color: Colors.white,
                        child: Text('256 GB',style: TextStyle(color: black),softWrap: true,overflow: TextOverflow.fade,)
                    ),
                  ),
                ],
              ),
            ),
            button('Add to cart'),
            button('Buy now'),
            Divider(color: Colors.grey,thickness: 0.4,),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text('About this item:',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600,color: black,),softWrap: true,overflow: TextOverflow.ellipsis,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text('6.1-inch (15.5 cm diagonal) Super Retina XDR display Ceramic Shield, tougher than any smartphone glass A14 Bionic chip, the fastest chip ever in a smartphonePro camera system with 12MP Ultra Wide, Wide and Telephoto cameras; 4x optical zoom range; Night mode, Deep Fusion, Smart HDR 3, Apple ProRAW, 4K Dolby Vision HDR recording LiDAR Scanner for improved AR experiences, Night mode portraits12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recordingIndustry-leading IP68 water resistanceSupports MagSafe accessories for easy attach and faster wireless charging iOS with redesigned widgets on the Home screen, all-new App Library, App Clips and more'
                  ,style: TextStyle(fontSize: 17,fontFamily: "QuickSand",color: black,),softWrap: true,overflow: TextOverflow.clip),
            ),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    );
  }
  Widget carousel() {
    return Carousel(
        autoplayDuration: Duration(seconds: 6),
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotIncreasedColor: Colors.white,
        dotColor: Colors.white,
        dotBgColor: Colors.transparent,
        autoplay: false,
        images: images);
  }
  Widget button(String title){
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
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
