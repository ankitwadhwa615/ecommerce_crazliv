// @dart=2.9
import '../Services/GetCity.dart';
import 'package:ecommerce_crazliv/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AddressForm extends StatefulWidget {
  @override
  _AddressFormState createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
  bool isLoading = false;
  Color labelColor = Colors.black45;
  var _formKey = GlobalKey<FormState>();
  TextEditingController _nameTextController = TextEditingController();
  TextEditingController _mobileNoTextController = TextEditingController();
  TextEditingController _pinCodeTextController = TextEditingController();
  TextEditingController _addressTextController = TextEditingController();
  TextEditingController _localityTextController = TextEditingController();
  String city;
  String state;
  int _groupValue=0;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        backgroundColor:darkWhite,
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
            'Add Address',
            style: TextStyle(
              color: black,
              fontFamily: 'Quicksand',
            ),
          ),
        ),
        body: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 12, right: 12, top: 12, bottom: 6),
                      child: Text(
                        'CONTACT DETAILS',
                        style: TextStyle(
                            color: black, fontSize: 15, fontFamily: 'QuickSand'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, bottom: 8, top: 8),
                      child: TextFormField(
                        controller: _nameTextController,
                        keyboardType: TextInputType.text,
                        // ignore: missing_return
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "please enter a value";
                          }
                        },
                        cursorColor: Colors.black,
                        style: TextStyle(
                            height: 1.0,
                            color: black,
                            fontSize: 15,
                            fontFamily: 'QuickSand'),
                        decoration: InputDecoration(
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black45, width: 0.5),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black45, width: 0.5),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          labelStyle: TextStyle(
                              color: labelColor,
                              fontSize: 15,
                              fontFamily: 'QuickSand'),
                          labelText: 'Name*',
                        ),
                        cursorWidth: 0.8,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, bottom: 8, top: 16),
                      child: TextFormField(
                        controller: _mobileNoTextController,
                        keyboardType: TextInputType.number,
                        // ignore: missing_return
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "please enter a value";
                          } else if (value.length < 10) {
                            return 'please enter a valid number';
                          }
                        },
                        cursorColor: Colors.black,
                        style: TextStyle(
                            height: 1.0,
                            color: black,
                            fontSize: 15,
                            fontFamily: 'QuickSand'),
                        decoration: InputDecoration(
                          errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black45, width: 0.5),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black45, width: 0.5),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          labelStyle: TextStyle(
                              color: labelColor,
                              fontSize: 15,
                              fontFamily: 'QuickSand'),
                          labelText: 'Mobile No.*',
                        ),
                        cursorWidth: 0.8,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 12, right: 12, top: 12, bottom: 6),
                      child: Text(
                        'ADDRESS',
                        style: TextStyle(
                            color: black, fontSize: 15, fontFamily: 'QuickSand'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, bottom: 8, top: 8),
                      child: TextFormField(
                        controller: _pinCodeTextController,
                        keyboardType: TextInputType.number,
                        // ignore: missing_return
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "please enter a value";
                          } else if (value.length < 6) {
                            return 'Minimum length id 6';
                          }
                        },
                        onChanged: (value){
                          getCityName(value);
                        },
                        cursorColor: Colors.black,
                        style: TextStyle(
                            height: 1.0,
                            color: black,
                            fontSize: 15,
                            fontFamily: 'QuickSand'),
                        decoration: InputDecoration(
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black45, width: 0.5),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black45, width: 0.5),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          labelStyle: TextStyle(
                              color: labelColor,
                              fontSize: 15,
                              fontFamily: 'QuickSand'),
                          labelText: 'Pin Code',
                        ),
                        cursorWidth: 0.8,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, bottom: 8, top: 16),
                      child: TextFormField(
                        controller: _addressTextController,
                        keyboardType: TextInputType.text,
                        // ignore: missing_return
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "please enter a value";
                          }
                        },
                        cursorColor: Colors.black,
                        style: TextStyle(
                            height: 1.0,
                            color: black,
                            fontSize: 15,
                            fontFamily: 'QuickSand'),
                        decoration: InputDecoration(
                          errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black45, width: 0.5),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black45, width: 0.5),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          labelStyle: TextStyle(
                              color: labelColor,
                              fontSize: 15,
                              fontFamily: 'QuickSand'),
                          labelText: 'Address(House No.,Building,Street,Area)*',
                        ),
                        cursorWidth: 0.8,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, bottom: 8, top: 16),
                      child: TextFormField(
                        controller: _localityTextController,
                        keyboardType: TextInputType.text,
                        // ignore: missing_return
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "please enter a value";
                          }
                        },
                        cursorColor: Colors.black,
                        style: TextStyle(
                            height: 1.0,
                            color: black,
                            fontSize: 15,
                            fontFamily: 'QuickSand'),
                        decoration: InputDecoration(
                          errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black45, width: 0.5),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black45, width: 0.5),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          labelStyle: TextStyle(
                              color: labelColor,
                              fontSize: 15,
                              fontFamily: 'QuickSand'),
                          labelText: 'Locality/Town*',
                        ),
                        cursorWidth: 0.8,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            color: Color.fromRGBO(245, 245, 246, 1.0),
                            child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: city == null
                                    ? Text('City/District*',
                                        style: TextStyle(
                                            color: labelColor,
                                            fontSize: 15,
                                            fontFamily: 'QuickSand'))
                                    : Text(
                                        city,
                                        style: TextStyle(
                                            color: black,
                                            fontSize: 15,
                                            fontFamily: 'QuickSand'),
                                      )),
                          ),
                        )),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                              color: Color.fromRGBO(245, 245, 246, 1.0),
                              child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: state == null
                                      ? Text('State*',
                                          style: TextStyle(
                                              color: labelColor,
                                              fontSize: 15,
                                              fontFamily: 'QuickSand'))
                                      : Text(
                                          state,
                                          style: TextStyle(
                                              color: black,
                                              fontSize: 15,
                                              fontFamily: 'QuickSand'),
                                        ))),
                        )),

                      ],
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Theme(
                  data: Theme.of(context).copyWith(
                      unselectedWidgetColor: black,
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: RadioListTile(
                              value: 0,
                              groupValue: _groupValue,
                              title: Text("Home",style: TextStyle(
                                  color: black,
                                  fontSize: 15,
                                  fontFamily: 'QuickSand'),),
                              onChanged: (newValue) =>
                                  setState(() => _groupValue = newValue),
                              activeColor: black,
                              selected: false,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: RadioListTile(
                              value: 1,
                              groupValue: _groupValue,
                              title: Text("Office",style: TextStyle(
                                  color: black,
                                  fontSize: 15,
                                  fontFamily: 'QuickSand'),),
                              onChanged: (newValue) =>
                                  setState(() => _groupValue = newValue),
                              activeColor: black,
                              selected: false,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20.0),
          child: MaterialButton(
            onPressed: () {},
            color: black,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Add Address',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
  Future<dynamic> getCityName(String pinCode) async {
    CityGetter _cityGetter =
    CityGetter();
    var cityData = await _cityGetter.getData(pinCode);
    setState(() {
      city = cityData[0]['PostOffice'][0]['District'];
      state = cityData[0]['PostOffice'][0]['State'];
    });
    return cityData;
  }
}
