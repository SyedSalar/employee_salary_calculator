import 'package:flutter/material.dart';

class MyTable extends StatefulWidget {
  @override
  State<MyTable> createState() => _MyTableState();
}

class _MyTableState extends State<MyTable> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                i = int.parse(value);
              });
            },
          ),
          ElevatedButton(
              onPressed: (() {
                setState(() {
                  for (int n = 10; n >= 1; n--) {
                    int c = i * n;
                    print('$i * $n = $c');
                  }
                });
              }),
              child: Text('Table'))
        ],
      ),
    ));
  }
}
