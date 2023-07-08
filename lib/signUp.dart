
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:pro/HomePage.dart';


class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  _signUpState createState() => _signUpState();
}


String c = '';
bool hidePassword = true;
bool isChecked = false;

class _signUpState extends State<signUp> {

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    0, DeviceWidth / 20, 0, DeviceWidth / 25),
                child: Container(
                  width: 500,
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
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
                      labelText: '   Email',
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
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderRadius:
                              BorderRadius.vertical(bottom: Radius.zero)),
                      labelText: '   User Name',
                      suffixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    DeviceWidth / 20, DeviceWidth / 20, DeviceWidth / 20, 0),
                child: Container(
                  child: TextField(
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
              Padding(
                padding: EdgeInsets.fromLTRB(
                    DeviceWidth / 20, DeviceWidth / 20, DeviceWidth / 20, 0),
                child: Container(
                  child: TextField(
                    obscureText: hidePassword,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderRadius:
                              BorderRadius.vertical(bottom: Radius.zero)),
                      labelText: '   Confirm password',
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

                  Padding(
                    padding:  EdgeInsets.only(top: DeviceWidth/16),
                    child: SizedBox(
                      width: (DeviceWidth / 2),
                      child: ElevatedButton(
                        child: Text("Sign Up"),
                        onPressed:()  {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => HomePage()));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: DeviceWidth / 20),

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: DeviceWidth / 27),
                      child: Text(
                        "Already have an account ?",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text.rich(TextSpan(children: [
                      TextSpan(
                          text: 'Login',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, 'signin');
                            }),
                    ])),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
