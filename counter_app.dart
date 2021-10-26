import 'package:flutter/material.dart';

class CounterAPP extends StatefulWidget {
  const CounterAPP({Key? key}) : super(key: key);

  @override
  State<CounterAPP> createState() => _CounterAPPState();
}

class _CounterAPPState extends State<CounterAPP> {
  int count = 0;
  _onCountPressed() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        actions: [
          PopupMenuButton(
              onSelected: (value) {
                print(value);
                if (value == 1) {
                  print("screen ONe");
                } else if (value == 2) {
                  print("Screen Two");
                }
              },
              elevation: 20,
              tooltip: "Popup menu",
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Colors.orange, width: 2)),
              offset: Offset(5.0, 56.0),
              icon: Icon(Icons.more_vert),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    child: Text("item 1"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text("item 2"),
                    value: 2,
                  )
                ];
              })
        ],
      ),
      body: Center(
        child: Column(
          children: [Text("Increment Number $count")],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.pink,
      //   tooltip: "any text",
      //   hoverColor: Colors.orange,
      //   onPressed: () {},
      //   child: Icon(Icons.add),
      // ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        FloatingActionButton.extended(
            backgroundColor: Colors.orange,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Colors.black, width: 2),
            ),
            hoverColor: Colors.blue,
            tooltip: "Any Text",
            onPressed: () {
              _onCountPressed();
              //_showDialog(context);
            },
            icon: Icon(Icons.add),
            label: Text("add")),
      ]),
    );
  }
}

// _showDialog(BuildContext context) {
//   showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text("Simple Alert Dialog"),
//           content: Text(
//             "This is body of the alert dialog",
//           ),
//           actions: [
//             TextButton(onPressed: () {}, child: Text("yes")),
//             TextButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: Text("No")),
//           ],
//         );
//       });
// }
