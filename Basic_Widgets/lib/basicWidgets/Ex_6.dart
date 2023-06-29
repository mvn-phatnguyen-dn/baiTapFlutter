import 'package:flutter/material.dart';

class Ex6MonkeyPage extends StatefulWidget {
  const Ex6MonkeyPage({super.key});

  @override
  _Ex6MonkeyPageState createState() => _Ex6MonkeyPageState();
}

class _Ex6MonkeyPageState extends State<Ex6MonkeyPage> {
  double rotation = 0.0;
  double initialRotation = 0.0;
  double scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onLongPressEnd: (_) {
            setState(() {
              scale = 1.0;
              rotation = 0.0;
            });
          },
          child: InteractiveViewer(
            onInteractionStart: (_) {
              setState(
                () {
                  initialRotation = rotation;
                },
              );
            },
            onInteractionUpdate: (details) {
              if (details.scale != 1.0) {
                setState(
                  () {
                    scale = details.scale.clamp(0.5, 2.0);
                  },
                );
              }
              if (details.localFocalPoint.dx != 0) {
                setState(
                  () {
                    rotation =
                        initialRotation + details.localFocalPoint.dx * 0.1;
                  },
                );
              }
            },
            child: Transform.rotate(
              angle: rotation,
              child: Image.asset(
                'assets/images/img_monkey.png',
                width: 400,
                height: 300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
