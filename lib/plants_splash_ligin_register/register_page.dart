import 'package:flutter/material.dart';
import 'package:flutter_feb_project_creating/plants_splash_ligin_register/login_page.dart';



class Register_page extends StatefulWidget {
  @override
  State<Register_page> createState() => _Register_pageState();
}

class _Register_pageState extends State<Register_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 100,
            ),
            Text(
              "Register",
              style: TextStyle(color: Colors.green[900], fontSize: 30),
            ),
            Text(
              "Create your new account",
              style: TextStyle(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.green[900],
                    ),
                    hintText: 'Full Name',
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.green[900],
                    ),
                    hintText: "Email",
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.green[900],
                    ),
                    hintText: 'Password',
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.green[900],
                    ),
                    hintText: 'Confirm Password',
                    border: OutlineInputBorder()),
              ),
            ),
            RichText(
                text: TextSpan(
                    text: 'By signing you agree to our ',
                    style: TextStyle(
                        color: Colors.green[900],
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                    children: [
                  TextSpan(
                      text: "Team of use ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.bold))
                ])),
            RichText(
                text: TextSpan(
                    text: "and ",
                    style: TextStyle(
                        color: Colors.green[900],
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                    children: [
                  TextSpan(
                      text: 'privacy notice',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.bold))
                ])),
            SizedBox(
              height: 80,
            ),
            MaterialButton(
              color: Colors.green[900],
              onPressed: () {},
              child: Text("Sign Up"),
              minWidth: 300,
              height: 36,
              shape: StadiumBorder(),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("alredy have a account?"),
                TextButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_page()));},
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.green[900]),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
