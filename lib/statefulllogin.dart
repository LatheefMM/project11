import 'package:flutter/material.dart';


class LoginPage2 extends StatefulWidget {
  const LoginPage2({Key? key}) : super(key: key);

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  var formkey = GlobalKey<FormState>(); // to fetch the state of the form
  bool showpwd = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN STATEFUL"),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            const Center(
                child: Text(
                  "LOGIN PAGE",
                  style: TextStyle(fontSize: 40),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "UserName",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email)),
                validator: (uname) {
                  if (uname!.isEmpty || !uname.contains('@')) {
                    return 'Enter a valid email';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: showpwd,
                //obscuringCharacter: '*',
                decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpwd) {
                              showpwd = false;
                            } else {
                              showpwd = true;
                            }
                          });
                        },
                        icon: Icon(showpwd == true
                            ? Icons.visibility_off
                            : Icons.visibility))),

                validator: (password) {
                  if (password!.isEmpty || password.length < 6) {
                    return 'Not a valid Password';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  final valid = formkey.currentState!.validate();
                  if (valid) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Homepage()));
                  } else {
                    Fluttertoast.showToast(
                        msg: "Login Failed",
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM,
                        // timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }
                },
                child: const Text("Login Here")),
            TextButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Registration()));
            }, child: const Text("SignUp Here")),
          ],
        ),
      ),
    );
  }
}