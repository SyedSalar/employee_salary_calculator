import 'package:flutter/material.dart';
import 'package:salary_calculator/table.dart';

class MySalaryPage extends StatefulWidget {
  @override
  State<MySalaryPage> createState() => _MySalaryPageState();
}

class _MySalaryPageState extends State<MySalaryPage> {
  double a = 0, c = 0, d = 0;

  String str = '';
  int age = 0;

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: Text(
            'Employee Salary Calculator',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w900, fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        backgroundColor: Colors.deepOrangeAccent,
        body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
                child: SingleChildScrollView(
                    child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                // Container(
                //     color: Colors.white,
                //     width: 1500,
                //     height: 50,
                //     child: Padding(
                //       padding: const EdgeInsets.only(left: 490, top: 10),
                //       child: Text(
                //         'Employee Salary Calculator',
                //         style: TextStyle(
                //           fontSize: 20,
                //           fontWeight: FontWeight.w900,
                //         ),
                //       ),
                //     )),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                                borderRadius: BorderRadius.circular(10),
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
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.red)),
                            fillColor: Colors.white,
                            filled: true,
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                          onChanged: (value) => setState(() {
                                // a = double.parse(value);
                                age = int.parse(value);
                              }),
                          decoration: InputDecoration(
                            hintText: 'Enter Age...',
                            labelText: 'Age:',
                            // prefixIcon: Icon(Icons.confirmation_number_outlined),
                            // prefixIconColor: Colors.deepOrangeAccent,
                            suffixText: 'Age',
                            suffixStyle:
                                TextStyle(color: Colors.deepOrangeAccent),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
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
                          if (age >= 20 && age <= 30) {
                            d = a + (0.10 * a);
                          } else if (age >= 31 && age <= 50) {
                            d = a + (0.20 * a);
                          } else if (age >= 51 && age <= 70) {
                            d = a + (0.30 * a);
                          }

                          // c = ((0.25 * a) + 3000 + (0.50 * a));
                          // d = c - (0.03 * a);
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
                  "Employee $str's Net Salary is $d Rs",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Spacer(),
                    Column(
                      children: [
                        FloatingActionButton(
                            child: Icon(Icons.navigate_next),
                            backgroundColor: Colors.black,
                            onPressed: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyTable(),
                                  ));
                            })),
                      ],
                    ),
                  ],
                )
              ],
            ))))));
  }
}
