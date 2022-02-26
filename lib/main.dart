import 'package:flutter/material.dart';

void main() {
  runApp(const Layout());
}

class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Layout"),
        ),
        body: Container(
          child: Column(
            children: [
              Text("Expanded"),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Expanded(
                      flex: 1,
                      child: BlueBox(),
                    ),
                    Expanded(
                      flex: 3,
                      child: BlueBox(),
                    ),
                    BlueBox(),
                    BlueBox(),
                  ],
                ),
              ),
              Text("Flexible"),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.loose,
                      child: BlueBox(),
                    ),
                    Flexible(
                      flex: 3,
                      fit: FlexFit.loose,
                      child: BlueBox(),
                    ),
                    BlueBox(),
                    BlueBox(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BlueBox extends StatelessWidget {
  const BlueBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
    );
  }
}
