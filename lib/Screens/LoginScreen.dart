import 'package:ecommerce_crazliv/Screens/DashBoard.dart';
import 'package:ecommerce_crazliv/Screens/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_crazliv/Icon/my_flutter_app_icons.dart';
import 'package:ecommerce_crazliv/Constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPassword = true;
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
                SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                Text(
                  'STORE',
                  style: TextStyle(
                      fontSize: 75,
                      fontFamily: 'Quicksand',
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                fontFamily: 'Quicksand',
                                letterSpacing: -1),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              ' Sign in to continue!',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  fontFamily: 'Quicksand',
                                  letterSpacing: -1),
                            ),
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
                          autofocus: false,
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
                              suffixIcon: Icon(
                                Icons.share_outlined,
                                color: Colors.transparent,
                              ),
                              prefixIcon: Icon(Icons.alternate_email,
                                  color: Colors.grey),
                              errorStyle: TextStyle(color: black),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.zero),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: black, width: 0.1),
                                borderRadius: BorderRadius.all(Radius.zero),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: black, width: 0.1),
                                borderRadius: BorderRadius.all(Radius.zero),
                              )),
                        ),
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(0),
                        elevation: 0.0,
                        color: Colors.white,
                        child: TextFormField(
                          autofocus: false,
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
                                  onPressed: () {
                                    setState(() {
                                      showPassword = !showPassword;
                                    });
                                  },
                                  icon: showPassword
                                      ? Icon(
                                          Icons.remove_red_eye,
                                          color: Colors.grey,
                                        )
                                      : Icon(
                                          Icons.remove_red_eye_outlined,
                                          color: Colors.grey,
                                        )),
                              prefixIcon:
                                  Icon(Icons.lock_outline, color: Colors.grey),
                              errorStyle: TextStyle(color: black),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.zero),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: black, width: 0.1),
                                borderRadius: BorderRadius.all(Radius.zero),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: black, width: 0.1),
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
                                'SIGN IN',
                                style: TextStyle(
                                  fontFamily: 'Quicksand',
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Quicksand',
                              letterSpacing: 0,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'SIGN UP',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Quicksand',
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(MyFlutterApp.facebook)),
                          SizedBox(
                            width: 35,
                          ),
                          IconButton(
                              onPressed: () {}, icon: Icon(MyFlutterApp.google))
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
