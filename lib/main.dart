import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
      title: "Tela de Login",
      home: LoginPage()));
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  //Colocando em tela cheia sobrescrevendo o método initState
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(

          children: <Widget>[
            Positioned(
              //top: 0,
              //bottom: MediaQuery.of(context).size.height,

              child: Image.asset(
                "images/logo.png",
                width: double.maxFinite,
                height: 200
              ),
            ),
            /*
            Positioned(
              top: 200,
              left: 32,
              child: Text('Sign in',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54
                )
              ),
            ),*/
            Positioned(
              top: 250,
              child: Container(
                padding: EdgeInsets.all(32),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(62),
                      topRight: Radius.circular(62)
                    )
                  ),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Username'
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16, bottom: 32),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Password'
                        )
                      ),
                    ),
                    Container(
                      height: 45,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(32)
                        )
                      ),
                      child: Center(
                        child: Text('Login',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    Container(height: 8,),
                    Text("Forgot your Password?",
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                    Container(height: 70,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.all(
                                  Radius.circular(100)
                              )
                          ),
                          child: Center(
                            child: Icon(Icons.face,
                              color: Colors.grey[700],),
                          ),
                        ),
                        Container(width: 30,),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.all(
                                  Radius.circular(100)
                              )
                          ),
                          child: Center(
                            child: Icon(Icons.fingerprint,
                              color: Colors.grey[700],),
                          ),
                        )
                      ],
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
