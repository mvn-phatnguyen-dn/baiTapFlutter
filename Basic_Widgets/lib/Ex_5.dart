import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class Ex5CustomSlider extends StatefulWidget {
  const Ex5CustomSlider({super.key});

  @override
  _Ex5CustomSliderState createState() => _Ex5CustomSliderState();
}

class _Ex5CustomSliderState extends State<Ex5CustomSlider> {
  double _value = 6;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: [
          Center(
            child: Container(
              width: 29,
              height: 354,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 34, 54, 202),
                  width: 2,
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: 50,
              height: 400,
              child: SfSliderTheme(
                data: SfSliderThemeData(
                  thumbStrokeColor: Colors.red,
                  thumbStrokeWidth: 1,
                  thumbRadius: 25,
                  activeTrackHeight: 25,
                  inactiveTrackHeight: 25,
                  trackCornerRadius: 0,
                  activeTrackColor: Colors.blue,
                  inactiveTrackColor: Colors.white,
                  overlayRadius: 0,
                  thumbColor: Color.fromARGB(255, 231, 131, 8),
                ),
                child: SfSlider.vertical(
                  min: 0.0,
                  max: 100.0,
                  thumbIcon: Container(
                    alignment: Alignment.center,
                    child: Text(
                      _value.toInt().toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  value: _value,
                  onChanged: (values) {
                    setState(() {
                      _value = values;
                    });
                  },
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
