// @dart=2.9
import 'package:ecommerce_crazliv/Screens/Address_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_crazliv/Constants.dart';
import 'package:flutter/rendering.dart';

class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  List addresses = [
    {
      'name': 'Ankit Wadhwa',
      'address': '123-A model town',
      'city': 'Yamunanagar',
      'pinCode':'135001',
      'state': 'Haryana',
      'country': 'India',
      'mobile':'1234567890',
      'type':'Home'
    },
    {
      'name': 'Ankit Wadhwa',
      'address': '456 Huda',
      'city': 'Yamunanagar',
      'pinCode':'135001',
      'state': 'Haryana',
      'country': 'India',
      'mobile':'1234567890',
      'type':'Office'
    },
  ];
  final GlobalKey<ScaffoldState> _key = GlobalKey();
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
          SizedBox(
            height: 10,
          ),
          userDetails(),
          address(),
          changePassword()
        ]),
      ),
    );
  }
Widget userDetails(){
   return Container(
     child:Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Text(
           'Ankit Wadhwa',
           style: TextStyle(
               color: Colors.black,
               fontWeight: FontWeight.bold,
               fontSize: 16),
         ),
         Text(
           'ankitwadhwa615@gmail.com',
           style: TextStyle(
             fontSize: 16,
             color: black,
             fontFamily: 'Quicksand',
           ),
         ),
       ],
     ),
   );
}
  Widget address() {
    return Padding(
      padding: const EdgeInsets.all(19.0),
      child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: addresses.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(bottom:10.0),
              child: Container(
                  height: 265,
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
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
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.edit_outlined,
                                      color: Colors.grey,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Edit',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                )),
                            Text(
                              '|',
                              style: TextStyle(color: Colors.grey, fontSize: 35),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                                    return AddressForm();
                                  }));
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.add_circle_outline,
                                      color: Colors.grey,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Add more',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                )),
                          ],
                        )
                      ],
                    ),
                  )),
            );
          }),
    );
  }

  Widget changePassword() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 45.0,
        width: MediaQuery.of(context).size.width,
        // ignore: deprecated_member_use
        child: RaisedButton(
          elevation: 0.2,
          shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.circular(0.0),
              side: BorderSide(
                  color: Colors.black, width: 0.2)),
          onPressed: () {

          },
          padding: EdgeInsets.all(10.0),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Change Password',
                style: TextStyle(color: black),
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.edit_outlined,
                color: black,
                size: 20,
              ),
            ],
          )
        ),
      ),
    );
  }
}
