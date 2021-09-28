import 'package:flutter/material.dart';

class Formpage extends StatefulWidget {
  Formpage({Key? key}) : super(key: key);

  @override
  State<Formpage> createState() => _FormpageState();
}

class _FormpageState extends State<Formpage> {
  TextEditingController firstnumbercontroller = TextEditingController();

  TextEditingController secondnumbercontroller = TextEditingController();

  int sum = 0;
  int Subtraction = 0;
  int mul = 0;
  int div = 0;
  num ans = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Input'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "$ans",
                style: TextStyle(fontSize: 30),
              ),
              TextFormField(
                controller: firstnumbercontroller,
                decoration: InputDecoration(
                  labelText: "Enter a number",
                  hintText: "eg.1234",
                  border: OutlineInputBorder(),
                ),
                autovalidateMode: AutovalidateMode.always,
                validator: (value) {
                  var regex = RegExp(r'\d$');
                  if (!regex.hasMatch(value!)) {
                    return 'only numbers are accepted';
                  }
                },
              ),
              SizedBox(height: 2),
              TextFormField(
                controller: secondnumbercontroller,
                decoration: InputDecoration(
                  labelText: "Enter another number",
                  hintText: "eg.568",
                  border: OutlineInputBorder(),
                ),
                autovalidateMode: AutovalidateMode.always,
                validator: (value) {
                  var regex = RegExp(r'\d$');
                  if (!regex.hasMatch(value!)) {
                    return 'only numbers are accepted';
                  }
                },
              ),
              ElevatedButton(
                onPressed: () {
                  int num1 = int.parse(firstnumbercontroller.text);
                  int num2 = int.parse(secondnumbercontroller.text);
                  print(firstnumbercontroller.text);
                  print(secondnumbercontroller.text);
                  setState(() {
                    ans = num1 + num2;
                  });
                },
                child: Text("Add"),
              ),
              SizedBox(height: 2),
              ElevatedButton(
                onPressed: () {
                  int num1 = int.parse(firstnumbercontroller.text);
                  int num2 = int.parse(secondnumbercontroller.text);
                  print(firstnumbercontroller.text);
                  print(secondnumbercontroller.text);
                  setState(() {
                    ans = num1 - num2;
                  });
                },
                child: Text("Sub"),
              ),
              SizedBox(height: 2),
              ElevatedButton(
                onPressed: () {
                  int num1 = int.parse(firstnumbercontroller.text);
                  int num2 = int.parse(secondnumbercontroller.text);
                  print(firstnumbercontroller.text);
                  print(secondnumbercontroller.text);
                  setState(() {
                    ans = num1 * num2;
                  });
                },
                child: Text("Mul"),
              ),
              SizedBox(height: 2),
              ElevatedButton(
                onPressed: () {
                  int num1 = int.parse(firstnumbercontroller.text);
                  int num2 = int.parse(secondnumbercontroller.text);
                  print(firstnumbercontroller.text);
                  print(secondnumbercontroller.text);
                  setState(() {
                    if (num2 == '0') {
                      print("Error");
                    } else {
                      ans = num1 / num2;
                    }
                  });
                },
                child: Text("Div"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
