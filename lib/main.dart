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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Sized Box"),
              Container(
                margin: EdgeInsets.only(top: 20),
                color: Colors.red,
                child: Row(
                  children: const [
                    BlueBox(),
                    SizedBox(
                      width: 175,
                      child: BlueBox(),
                    ),
                    BlueBox(),
                    SizedBox(
                      width: 10,
                      child: BlueBox(),
                    ),
                  ],
                ),
              ),
              Text("Spacer"),
              Container(
                margin: EdgeInsets.only(top: 20),
                color: Colors.amber,
                child: Row(
                  children: const [
                    BlueBox(),
                    Spacer(
                      flex: 3,
                    ),
                    BlueBox(),
                    Spacer(
                      flex: 6,
                    ),
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
