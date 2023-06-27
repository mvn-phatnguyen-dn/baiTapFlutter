import 'package:flutter/material.dart';

class Ex4ColorSlider extends StatefulWidget {
  const Ex4ColorSlider({super.key});

  @override
  _Ex4ColorSliderState createState() => _Ex4ColorSliderState();
}

class _Ex4ColorSliderState extends State<Ex4ColorSlider> {
  double redValue = 0;
  double greenValue = 0;
  double blueValue = 0;

  Color getSelectedColor() {
    return Color.fromRGBO(
      redValue.round(),
      greenValue.round(),
      blueValue.round(),
      1.0,
    );
  }

  String getTitle() {
    return 'Color (R: ${redValue.round()} G: ${greenValue.round()} B: ${blueValue.round()})';
  }

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(children: [
        const SizedBox(height: 100),
        Center(
          child: Text(
            getTitle(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Container(
          width: widthScreen - 60,
          height: heightScreen / 2,
          decoration: BoxDecoration(
              color: getSelectedColor(),
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(40)),
        ),
        const SizedBox(height: 20),
        Column(children: [
          Row(children: [
            const SizedBox(width: 30),
            const SizedBox(
              width: 50,
              height: 20,
              child: Text(
                'Red',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: widthScreen - 160,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            '0',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            '255',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                      width: widthScreen - 100,
                      child: Slider(
                          value: redValue,
                          onChanged: (value) {
                            setState(() {
                              redValue = value;
                            });
                          },
                          min: 0,
                          max: 255,
                          divisions: 255,
                          label: redValue.round().toString(),
                          activeColor: Colors.blue,
                          inactiveColor: Colors.blue)),
                ]),
          ]),
        ]),
        Row(children: [
          const SizedBox(width: 30),
          const SizedBox(
            width: 50,
            height: 20,
            child: Text(
              'Green',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(
              width: widthScreen - 160,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '0',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '255',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              width: widthScreen - 100,
              child: Slider(
                  value: greenValue,
                  onChanged: (value) {
                    setState(() {
                      greenValue = value;
                    });
                  },
                  min: 0,
                  max: 255,
                  divisions: 255,
                  label: greenValue.round().toString(),
                  activeColor: Colors.blue,
                  inactiveColor: Colors.blue),
            ),
          ]),
        ]),
        Row(children: [
          const SizedBox(width: 30),
          const SizedBox(
            width: 50,
            height: 20,
            child: Text(
              'Blue',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(
              width: widthScreen - 160,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '0',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '255',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              width: widthScreen - 100,
              child: Slider(
                  value: blueValue,
                  onChanged: (value) {
                    setState(() {
                      blueValue = value;
                    });
                  },
                  min: 0,
                  max: 255,
                  divisions: 255,
                  label: blueValue.round().toString(),
                  activeColor: Colors.blue,
                  inactiveColor: Colors.blue),
            ),
          ]),
        ]),
      ]),
    );
  }
}
