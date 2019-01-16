import 'package:flutter/material.dart';

void main() => runApp(
      new MaterialApp(
        title: "GridView",
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Grid View"),
            centerTitle: true,
          ),
          body: Grid(),
        ),
      ),
    );

class Grid extends StatefulWidget {
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  var list = new List(9);
  @override
  Widget build(BuildContext context) {
    return new GridView.count(
      padding: EdgeInsets.fromLTRB(
        40.0,
        150.0,
        40.0,
        0.0,
      ),
      crossAxisCount: 3,
      children: List.generate(9, (index) {
        return new MaterialButton(
          onPressed: () {
            setState(() {
              if (list[index] != index) list[index] = index;
            });
            print("$list index: $index");
          },
          color: list[index] != index ? Colors.tealAccent : Colors.red,
          child: new Text("$index"),
        );
      }),
    );
  }
}
