import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStartedPage(),
    );
  }
}

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  _GetStartedPageState createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(children: [
      Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          verticalDirection: VerticalDirection.down,
          children: [
            Column(
              children: [
                Container(
                    width: screenWidth * 262 / 393,
                    height: screenHeight / 4,
                    child: Row(children: [
                      Column(children: [
                        Container(
                            height: screenHeight / 4 / 4,
                            width: screenWidth * 1 / 9,
                            color: Color.fromARGB(255, 126, 123, 126)),
                        Container(
                            height: screenHeight / 4 / 4,
                            width: screenWidth * 1 / 9,
                            color: Colors.orange),
                        Container(
                            height: screenHeight / 4 / 4,
                            width: screenWidth * 1 / 9,
                            color: Color.fromARGB(186, 60, 64, 76)),
                        Container(
                            height: screenHeight / 4 / 4,
                            width: screenWidth * 1 / 9,
                            color: Colors.pink),
                      ]),
                      Column(children: [
                        Container(
                            width: screenWidth * 2 / 9,
                            height: screenHeight / 4 / 4 * 3,
                            decoration: BoxDecoration(color: Colors.blue)),
                        Row(children: [
                          Container(
                              width: screenWidth * 1 / 9,
                              height: screenHeight / 4 / 4,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 8, 209, 42))),
                          Container(
                              width: screenWidth * 1 / 9,
                              height: screenHeight / 4 / 4,
                              decoration: BoxDecoration(color: Colors.yellow))
                        ])
                      ])
                    ]),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 250, 249, 249),
                    )),
                Container(
                    width: screenWidth * 262 / 393,
                    height: screenHeight / 4,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    )),
                Container(
                    width: screenWidth * 262 / 393,
                    height: screenHeight / 4,
                    decoration: const BoxDecoration(
                      color: Colors.yellow,
                    )),
                Container(
                    width: screenWidth * 262 / 393,
                    height: screenHeight / 4,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ))
              ],
            ),
            Container(
                width: screenWidth * 131 / 393,
                height: 852,
                decoration: const BoxDecoration(
                  color: Colors.pink,
                )),
          ]),
      Positioned(
          top: 460,
          right: screenWidth * 50 / 393,
          child: Opacity(
              opacity: 0.45,
              child: Container(
                  width: 150,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 45, 27, 27),
                  )))),
    ]));
  }
}