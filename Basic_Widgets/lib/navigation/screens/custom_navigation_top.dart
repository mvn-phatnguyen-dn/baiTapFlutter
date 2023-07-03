import 'package:flutter/material.dart';

class CustomNavigationApp extends StatefulWidget {
  const CustomNavigationApp({super.key});

  @override
  State<CustomNavigationApp> createState() => _CustomNavigationAppState();
}

class _CustomNavigationAppState extends State<CustomNavigationApp> {
  bool isSelectedOption1 = true;
  bool isSelectedOption2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 3, top: 10, bottom: 10),
            width: 308,
            height: 0,
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search',
                filled: true,
                fillColor: Colors.grey.shade300,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 134, 107, 180)),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.grey.shade200),
            ),
            child: const Text(
              'Cancel',
              style: TextStyle(
                fontSize: 19,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(5),
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isSelectedOption1 = true;
                  isSelectedOption2 = false;
                });
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  side:
                      BorderSide(color: const Color.fromARGB(255, 91, 54, 184)),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                    bottomLeft: Radius.circular(5.0),
                  ),
                ),
                fixedSize: const Size(190, 20),
                backgroundColor: isSelectedOption1
                    ? const Color.fromARGB(255, 91, 54, 184)
                    : Colors.white,
              ),
              child: Text(
                'option 1',
                style: TextStyle(
                  fontSize: 19,
                  color: isSelectedOption1
                      ? Colors.white
                      : Color.fromARGB(255, 128, 122, 200),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isSelectedOption1 = false;
                  isSelectedOption2 = true;
                });
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  side:
                      BorderSide(color: const Color.fromARGB(255, 91, 54, 184)),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5.0),
                    bottomRight: Radius.circular(5.0),
                  ),
                ),
                fixedSize: const Size(190, 20),
                backgroundColor: isSelectedOption2
                    ? const Color.fromARGB(255, 91, 54, 184)
                    : Colors.white,
              ),
              child: Text(
                'option 2',
                style: TextStyle(
                  fontSize: 19,
                  color: isSelectedOption2
                      ? Colors.white
                      : Color.fromARGB(255, 128, 122, 200),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
