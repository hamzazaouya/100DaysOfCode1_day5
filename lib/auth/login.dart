import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.asset("images/logo.png"))),
            Container(
              padding: const EdgeInsets.all(20),
              child: Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "User Name",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.key),
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1))),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(children: [
                      const Text("If you don't have account "),
                      InkWell(
                        onTap: () {
                           Navigator.of(context).pushNamed("signup");
                        },
                        child: const Text(
                          "Click here",
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ]),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(minimumSize: Size(120, 40)),
                    onPressed: () {
                     
                    },
                    child: Text(
                      "Login",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  )
                ],
              )),
            ),
          ],
        ),
      ),
    ));
  }
}
