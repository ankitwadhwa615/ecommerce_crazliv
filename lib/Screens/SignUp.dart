// @dart=2.9
 import 'package:ecommerce_crazliv/Screens/DashBoard.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_crazliv/Constants.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  bool showConfirmPassword=true;
  bool showPassword=true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage('images/background.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.dstATop))),
      child: Scaffold(
          backgroundColor: Colors.black.withOpacity(0.4),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height:MediaQuery.of(context).size.height*0.1),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start
                    ,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Create Account',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,fontFamily: 'Quicksand',letterSpacing: -1),),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(' Sign Up to get started!',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,fontFamily: 'Quicksand',letterSpacing: -1),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(0),
                        elevation: 0.0,
                        color: Colors.white,
                        child: TextFormField(
                          cursorColor: black,
                          cursorHeight: 20,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            color: black,
                          ),
                          decoration: InputDecoration(
                              hintText: 'email',
                              hintStyle: TextStyle(color: Colors.grey),
                              suffixIcon: Icon(Icons.share_outlined,color: Colors.transparent,),
                              prefixIcon:
                              Icon(Icons.alternate_email, color: Colors.grey),
                              errorStyle: TextStyle(color: black),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.zero),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: black, width: 0.1),
                                borderRadius: BorderRadius.all(Radius.zero),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: black, width: 0.1),
                                borderRadius: BorderRadius.all(Radius.zero),
                              )),
                        ),
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(0),
                        elevation: 0.0,
                        color: Colors.white,
                        child: TextFormField(
                          cursorColor: black,
                          cursorHeight: 20,
                          obscureText: showPassword,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: black,
                          ),
                          decoration: InputDecoration(
                              hintText: 'password',
                              hintStyle: TextStyle(color: Colors.grey),
                              suffixIcon: IconButton(
                                onPressed: (){setState(() {
                                  showPassword=!showPassword;
                                });},
                                icon: showPassword?Icon(Icons.remove_red_eye,color: Colors.grey,):Icon(Icons.remove_red_eye_outlined,color: Colors.grey,)
                              ),
                              prefixIcon:
                              Icon(Icons.lock_outline, color: Colors.grey),
                              errorStyle: TextStyle(color: black),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.zero),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: black, width: 0.1),
                                borderRadius: BorderRadius.all(Radius.zero),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: black, width: 0.1),
                                borderRadius: BorderRadius.all(Radius.zero),
                              )),
                        ),
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(0),
                        elevation: 0.0,
                        color: Colors.white,
                        child: TextFormField(
                          cursorColor: black,
                          cursorHeight: 20,
                          obscureText: showConfirmPassword,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: black,
                          ),
                          decoration: InputDecoration(
                              hintText: 'confirm password',
                              hintStyle: TextStyle(color: Colors.grey),
                              suffixIcon: IconButton(
                                onPressed: (){setState(() {
                                  showConfirmPassword=!showConfirmPassword;
                                });},
                                icon: showConfirmPassword?Icon(Icons.remove_red_eye,color: Colors.grey,):Icon(Icons.remove_red_eye_outlined,color: Colors.grey,)
                              ),
                              prefixIcon:
                              Icon(Icons.lock_outline, color: Colors.grey),
                              errorStyle: TextStyle(color: black),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.zero),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: black, width: 0.1),
                                borderRadius: BorderRadius.all(Radius.zero),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: black, width: 0.1),
                                borderRadius: BorderRadius.all(Radius.zero),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DashBoard()));
                        },
                        color: black,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'SIGN UP',style: TextStyle(fontFamily: 'Quicksand',),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height*0.15
                        ,),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.arrow_back_ios,size: 15,),
                              Text('SIGN IN',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,fontFamily: 'Quicksand',),),

                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50
                        ,),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
