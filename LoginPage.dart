import 'package:flutter/material.dart';
import 'package:liberavendas/ui/home/HomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 180.0,
                width: 180.0,
                child: Image.asset(
                  'images/icone.png',
                ),
              ),
              const SizedBox(height: 50),
              Container(
                child: TextField(


                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Usuário", labelStyle: TextStyle(color: Colors.orange)),
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),

              ),
              const SizedBox(height: 20),
              Container(
                child: TextField(


                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Senha", labelStyle: TextStyle(color: Colors.orange)),
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),

              ),
              const SizedBox(height: 30),
              Container(

                height: 50.0,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  color: Colors.orange,
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
