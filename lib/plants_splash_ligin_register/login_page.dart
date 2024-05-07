import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feb_project_creating/plants_splash_ligin_register/register_page.dart';
import 'package:flutter_feb_project_creating/widgets/textstyel.dart';

void main() {
  runApp(MaterialApp(
    home: Login_page(),
  ));
}

class Login_page extends StatefulWidget {
  @override
  State<Login_page> createState() => _State();
}

class _State extends State<Login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        SingleChildScrollView(physics: NeverScrollableScrollPhysics(),
            child: Column(
                  children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(60)),
                  image: DecorationImage(
                      image: AssetImage("assets/images/greenleaf.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Text(
                  "Welcome back",
                  style: subheading,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Login to your account",
                  style: TextStyle(color: CupertinoColors.inactiveGray),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                  Icons.person,
                  color: Colors.green[900],
                ),hintText: "Full name",border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                decoration: InputDecoration(hintText: ".....",
                    prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.green[900],
                ),border: OutlineInputBorder()
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.green[900],
                        child: Icon(
                          Icons.verified_outlined,
                          size: 20,
                        ),
                      ),
                      Text(
                        "Remember me",
                        style: TextStyle(fontSize: 15,color: Colors.grey),
                      )
                    ],
                  ),
                  TextButton(onPressed: () {}, child: Text("Forgot Password?",style: TextStyle(color: Colors.green[900]),))
                ],
              ),
            ),
            SizedBox(height: 130,),
            MaterialButton(
              color: Colors.green[900],
              onPressed: () {},
              child: Text("Login"),
              minWidth: 300,
              height: 36,
              shape: StadiumBorder(),
            ),
                    SizedBox(height: 15,),
            RichText(
                text: TextSpan(
                    text: "Dont have an account?",style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.bold),
                    children: [TextSpan(text: "Sign up",recognizer: TapGestureRecognizer()..onTap =()=>{
                      Navigator.pushReplacement(context, (MaterialPageRoute(builder: (context)=>Register_page())))
                    },style: TextStyle(color: Colors.green[900],fontSize: 10))]))
                  ],
                ),
          ),

        //extendBodyBehindAppBar: true,
        );
  }
}
