import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double a = 0, c = 0, d = 0;

  String str = '';

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Material(
          color: Colors.deepOrangeAccent,
          child: Column(
            children: [
              Container(
                  color: Colors.white,
                  width: 1500,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 490, top: 10),
                    child: Text(
                      'Employee Salary Calculator',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  )),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(100.0),
                child: Column(
                  children: [
                    TextField(
                        onChanged: (value) => setState(() {
                              str = value;
                            }),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.account_box_rounded),
                          prefixIconColor: Colors.deepOrangeAccent,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(color: Colors.red)),
                          fillColor: Colors.white,
                          hintText: 'Enter Employee Name...',
                          labelText: 'Employee Name:',
                          filled: true,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                        onChanged: (value) => setState(() {
                              a = double.parse(value);
                            }),
                        decoration: InputDecoration(
                          hintText: 'Enter Basic Salary...',
                          labelText: 'Basic Salary:',
                          prefixIcon: Icon(Icons.money),
                          prefixIconColor: Colors.deepOrangeAccent,
                          suffixText: 'PKR',
                          suffixStyle:
                              TextStyle(color: Colors.deepOrangeAccent),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(color: Colors.red)),
                          fillColor: Colors.white,
                          filled: true,
                        )),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    onPressed: (() {
                      setState(() {
                        c = ((0.25 * a) + 3000 + (0.50 * a));
                        d = c - (0.03 * a);
                      });
                    }),
                    icon: Icon(
                      Icons.calculate,
                      color: Colors.deepOrangeAccent,
                    ),
                    label: Text(
                      'Calculate',
                      style: TextStyle(color: Colors.deepOrangeAccent),
                    )),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Employee $str's Gross Salary is $c Rs and Net Salary is $d Rs",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              )
            ],
          )),
    ));
  }
}
