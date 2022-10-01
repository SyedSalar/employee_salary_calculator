import 'package:flutter/material.dart';

class MyTable extends StatefulWidget {
  @override
  State<MyTable> createState() => _MyTableState();
}

class _MyTableState extends State<MyTable> {
  int i = 0, start = 0, stp = 0;
  String MyResult = '', MyReverseResult = '';

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: Text(
            'Table Generator',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w900, fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        backgroundColor: Colors.deepOrangeAccent,
        body: Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
                child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red)),
                      fillColor: Colors.white,
                      hintText: 'Enter Number ...',
                      labelText: 'Number to generate Table:',
                      filled: true,
                    ),
                    onChanged: (value) {
                      setState(() {
                        i = int.parse(value);
                      });
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red)),
                      fillColor: Colors.white,
                      hintText: 'Enter Stopping Point ...',
                      labelText: 'Start:',
                      filled: true,
                    ),
                    onChanged: (value) {
                      setState(() {
                        start = int.parse(value);
                      });
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red)),
                      fillColor: Colors.white,
                      hintText: 'Enter Stopping Point ...',
                      labelText: 'Stop:',
                      filled: true,
                    ),
                    onChanged: (value) {
                      setState(() {
                        stp = int.parse(value);
                      });
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Spacer(),
                      ElevatedButton(
                          onPressed: (() {
                            setState(() {
                              MyResult = '';
                              for (start; start <= stp; start++) {
                                int c = i * start;
                                MyResult += ('\n$i * $start = $c');
                              }
                            });
                          }),
                          child: Text('Table')),
                      Spacer(),
                      ElevatedButton(
                          onPressed: (() {
                            setState(() {
                              MyReverseResult = '';
                              for (stp; stp >= start; stp--) {
                                int c = i * stp;
                                MyReverseResult += ('\n$i * $stp = $c');
                              }
                            });
                          }),
                          child: Text('Reverse Table')),
                      Spacer()
                    ],
                  ),
                  Text(MyResult),
                  Text(MyReverseResult),
                ],
              ),
            )))));
  }
}
