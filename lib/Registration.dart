import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
class RegistrationExample extends StatefulWidget {
  const RegistrationExample({super.key});

  @override
  State<RegistrationExample> createState() => _RegistrationExampleState();
}

class _RegistrationExampleState extends State<RegistrationExample> {

  late Box box;
String? username;
int? Password;
  @override
  void initState(){
    super.initState();
    box=Hive.box('mybox');
  }
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

              TextField(
                onTap:(){
                  setState(() {
                    box.put('username',)
                  });
                },
                decoration: InputDecoration(border: OutlineInputBorder(),),),
              SizedBox(height: 20),

              Text("Password"),
              SizedBox(height: 10),

              TextField(decoration: InputDecoration(border: OutlineInputBorder()),),
              SizedBox(height: 30),
              ElevatedButton(onPressed: (){}, child: Text("Registration"))
            ],
          ),
        ),
      ),
    );
  }
}