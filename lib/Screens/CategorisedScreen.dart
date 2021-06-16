// @dart=2.9
import 'package:ecommerce_crazliv/Components/Radio_Button.dart';
import 'package:ecommerce_crazliv/Constants.dart';
import 'package:ecommerce_crazliv/Screens/Cart.dart';
import 'package:ecommerce_crazliv/Screens/CategorisedProductsView.dart';
import 'package:ecommerce_crazliv/Screens/Wishlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategorisedScreen extends StatefulWidget {
  final String category;
  CategorisedScreen({@required this.category});
  @override
  _CategorisedScreenState createState() => _CategorisedScreenState();
}

class _CategorisedScreenState extends State<CategorisedScreen> with SingleTickerProviderStateMixin{
  List menSubCategories = [
    'T-shirts',
    'Shirts',
    'Jeans',
    'Shorts',
    'Innerwear',
    'Sports shoes',
    'Flip-flops'
  ];
  List womenSubCategories = [
    'Dresses',
    'T-Shirts',
    'Jeans',
    'Tops',
    'Sarees',
    'Kurtas & Kurta Sets',
    'Trackpants & Shorts',
  ];
  bool loading = false;
  List<Widget> subCategoryProductsList=[];
  List<CategoryRadioModel> subCategoryList = [];
  void createSubCategoryItems() {
    setState(() {
      loading = true;
    });
    List subCategories = [];
    switch (widget.category) {
      case 'Men':
        subCategories = menSubCategories;
        break;
      case 'Women':
        subCategories = womenSubCategories;
        break;
      default:
        break;
    }
    for (int i = 0; i < subCategories.length; i++) {
      if (i == 0) {
        subCategoryList.add(
          CategoryRadioModel(true, subCategories[i]),
        );
      } else {
        subCategoryList.add(
          CategoryRadioModel(false, subCategories[i]),
        );
      }
      subCategoryProductsList.add(CategorisedProductsScreen(subCategory: subCategories[i]));
    }
    setState(() {
      loading = false;
    });
  }
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    createSubCategoryItems();
     _tabController=TabController(vsync: this, length: subCategoryList.length,initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {

    return new DefaultTabController(
      initialIndex: 0,
      length: subCategoryProductsList.length,
      child: Scaffold(
        backgroundColor: darkWhite.withOpacity(0.97),
        appBar: _appBar(AppBar().preferredSize.height),
        body: loading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Padding(
              padding: const EdgeInsets.all(8.0),
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                controller: _tabController,
                children: subCategoryProductsList
              ),
            ),
      ),
    );
  }

  Widget button(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: MaterialButton(
        onPressed: () {},
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

  _appBar(height) => PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, height + 80),
        child: Container(
            height: 155 ,
            color: Colors.transparent, // Background
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Container(
                        height: 45,
                        width: 45,
                        child: TextButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(14.0),
                                      side:
                                          BorderSide(color: Colors.black12)))),
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
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => WishList()));
                            },
                            icon: Icon(
                              Icons.favorite_outline,
                              size: 28,
                              color: black,
                            )),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Cart()));
                            },
                            icon: Icon(
                              Icons.shopping_bag_outlined,
                              size: 28,
                              color: black,
                            )),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0,left: 12,top:8),
                  child: Text(
                    '${widget.category}:',
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: black,
                        fontFamily: 'QuickSand'),
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: ListView.builder(
                        itemCount: subCategoryList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 7.0, horizontal: 8),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  subCategoryList.forEach(
                                      (element) => element.isSelected = false);
                                  subCategoryList[index].isSelected = true;
                                  setState(() {
                                    _tabController.index=index;
                                  });
                                });
                              },
                              child:
                                  new CategoryRadioItem(subCategoryList[index]),
                            ),
                          );
                        }),
                  ),
                ),
              ],
            )),
      );
}
