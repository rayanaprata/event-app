import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _name = new TextEditingController();
  final TextEditingController _email = new TextEditingController();
  final TextEditingController _password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "NOSSO EVENTO",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Container(
            child: Form(
                child: Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Image.asset("assets/images/logo.png",
                      width: 150.0, height: 150.0),
                ),
                Flexible(
                    child: TextFormField(
                  maxLength: 100,
                  decoration: InputDecoration(hintText: "Nome"),
                  controller: _name,
                  keyboardType: TextInputType.text,
                  validator: (val) => val == "" ? val : null,
                )),
                Flexible(
                    child: TextFormField(
                  maxLength: 100,
                  decoration: InputDecoration(hintText: "E-mail"),
                  controller: _email,
                  keyboardType: TextInputType.text,
                  validator: (val) => val == "" ? val : null,
                )),
                Flexible(
                    child: TextFormField(
                  maxLength: 20,
                  obscureText: true,
                  decoration: InputDecoration(hintText: "Senha"),
                  controller: _password,
                  keyboardType: TextInputType.text,
                  validator: (val) => val == "" ? val : null,
                )),
                Flexible(
                  child: TextButton(
                    child: Text(
                      "Cadastar",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () => {
                      
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.deepPurple,)
                  ),
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
