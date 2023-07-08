/*
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pro/main.dart';


class signin extends StatefulWidget {

  @override
  _signinState createState() => _signinState();

}

bool hidePassword = true;
bool isChecked = false;

class _signinState extends State<signin> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController  = TextEditingController();
  TextEditingController userNameController  = TextEditingController();


  @override
  Widget build(BuildContext context) {
    double DeviceWidth = MediaQuery.of(context).size.width;
    double DeviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween  ,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:  EdgeInsets.fromLTRB(DeviceWidth/9, DeviceWidth/4, DeviceWidth/8, DeviceWidth/4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                      EdgeInsets.fromLTRB(0, DeviceWidth / 20, 0, DeviceWidth / 25),
                      child: Container(
                        width: 500,
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.purple,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          DeviceWidth / 20, DeviceWidth / 20, DeviceWidth / 20, 0),
                      child: Container(
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                                borderRadius:
                                BorderRadius.vertical(bottom: Radius.zero)),
                            labelText: '   Email Or User Name',
                            suffixIcon: Icon(Icons.mail),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          DeviceWidth / 20, DeviceWidth / 20, DeviceWidth / 20, 0),
                      child: Container(
                        child: TextField(
                          controller: passwordController,
                          obscureText: hidePassword,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                                borderRadius:
                                BorderRadius.vertical(bottom: Radius.zero)),
                            labelText: '   password  ',
                            suffixIcon: IconButton(
                              icon: Icon(hidePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  hidePassword = !hidePassword;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(DeviceWidth / 20,
                                  DeviceWidth / 20, DeviceWidth / 20, 0),
                              child: Text(
                                "Remember me",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(DeviceWidth / 20,
                                  DeviceWidth / 20, DeviceWidth / 20, 0),
                              child: Switch(
                                value: isChecked,
                                activeColor: Colors.purple,
                                onChanged: (value) {
                                  setState(() {
                                    isChecked = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        Stack(children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                            SizedBox(
                              width: (DeviceWidth/3.5),
                              child: ElevatedButton(
                                child: Text("signin",
                                style: TextStyle(
                                  fontSize: DeviceWidth/38,

                                ),
                                ),

                                onPressed: ()  {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => wie_aplication()));
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.purple,
                                ),
                              ),
                            ),

                            SizedBox(
                              width: (DeviceWidth/3.5),
                              child: ElevatedButton(
                                child: Text("forget password",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.purple,
                                      fontSize: DeviceWidth/38,

                                    )),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => wie_aplication()));
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(224, 225, 226, 1),
                                ),
                              ),
                            ),
                          ]),
                          Positioned(
                            top: 5,
                            left:(DeviceWidth/2)- DeviceWidth/4.6,
                            child: CircleAvatar(
                              radius: 17,
                              backgroundColor: Colors.purple,
                              child: CircleAvatar(
                                radius: 16 ,

                                backgroundColor: Colors.white,
                                foregroundColor: Colors.purple,
                                child: Text('OR'),
                              ),
                            ), //CircularAvatar
                          ),

                      /*    Positioned(
                            left:(DeviceWidth/2)- (DeviceWidth/20),

                            child: Container(
                              width: DeviceWidth/10,
                              height: DeviceWidth/10,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.purple,
                                ),

                              ),
                              child:
                              Center(child: Text("OR", style: TextStyle(color: Colors.black))),
                            ),

                          )*/
                        ],)

                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          DeviceWidth / 20, DeviceWidth / 20, DeviceWidth / 20, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don\'t have an account ?",
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(DeviceWidth / 20,
                                DeviceWidth / 20, DeviceWidth / 20, 0),
                            child: Text.rich(TextSpan(children: [
                              TextSpan(
                                  text: 'Create A Account',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,

                                    color: Colors.purple,

                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pushNamed(context, 'signUp');
                                    }),
                            ])),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
*/