import 'package:flutter/material.dart';

import 'loginpage.dart';

void main() {
  runApp(const MaterialApp(useInheritedMediaQuery: true, home: Registration())
  );
}

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignUp'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset("assets/ic_launcher.png", height: 85, width: 100),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.person_2_outlined),
                    helperText: "Enter your full name",
                    hintText: "Full Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60))),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.phone_iphone_outlined),
                    helperText: "Enter your 10 digit phone number",
                    hintText: "Phone",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60))),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.alternate_email_outlined),
                    helperText: "Enter your Email address",
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60))),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.visibility_off_outlined),
                    helperText: "Enter a strong password",
                    hintText: "password must have 8 characters",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60))),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.visibility_off_outlined),
                    helperText: "confirm your password",
                    hintText: "confirm password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60))),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text("SignUp")),
            TextButton(onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>Loginpage()));
            }, child: const Text("already a user? Login Here!")),
          ],
        ),
      ),
    );
  }
}