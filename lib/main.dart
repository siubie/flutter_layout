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
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.account_circle,
                      size: 50,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Flutter Mc Flutterr",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Experienced app developer",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("123 Main Street"),
                    Text("(123) 456-7890"),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.accessibility,
                    size: 50,
                  ),
                  Icon(
                    Icons.timer,
                    size: 50,
                  ),
                  Icon(
                    Icons.phone_android,
                    size: 50,
                  ),
                  Icon(
                    Icons.phone_iphone,
                    size: 50,
                  ),
                ],
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
