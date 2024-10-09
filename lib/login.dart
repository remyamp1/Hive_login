import 'package:flutter/material.dart';
class LoginExample extends StatefulWidget {
  const LoginExample({super.key});

  @override
  State<LoginExample> createState() => _LoginExampleState();
}

class _LoginExampleState extends State<LoginExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Username"),
              SizedBox(height: 10),

              TextField(decoration: InputDecoration(border: OutlineInputBorder(),),),
              SizedBox(height: 20),
              
              Text("Password"),
              SizedBox(height: 10),

              TextField(decoration: InputDecoration(border: OutlineInputBorder()),),
              SizedBox(height: 30),
              ElevatedButton(onPressed: (){}, child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}