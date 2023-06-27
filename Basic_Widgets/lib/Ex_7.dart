import 'package:flutter/material.dart';

class TooltipShapeBorder extends ShapeBorder {
  final double arrowWidth;
  final double arrowHeight;
  final double arrowArc;
  final double radius;

  const TooltipShapeBorder({
    this.radius = 15,
    this.arrowWidth = 70,
    this.arrowHeight = 15,
    this.arrowArc = 0.0,
  }) : assert(arrowArc <= 1.0 && arrowArc >= 0.0);

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.only(bottom: arrowHeight);

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) => Path();

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    rect = Rect.fromPoints(
        rect.topLeft, rect.bottomRight - Offset(0, arrowHeight));
    double x = arrowWidth, y = arrowHeight, r = 1 - arrowArc;
    return Path()
      ..addRRect(RRect.fromRectAndRadius(rect, Radius.circular(radius)))
      ..moveTo(rect.bottomCenter.dx + x / 200, rect.bottomCenter.dy)
      ..relativeLineTo(-x / 2 * r, y * r)
      ..relativeQuadraticBezierTo(
          -x / 2 * (1 - r), y * (1 - r), -x * (1 - r), 0)
      ..relativeLineTo(-x / 2 * r, -y * r);
  }

  @override
  ShapeBorder scale(double t) => this;
}

class Ex7MonkeyApp extends StatefulWidget {
  const Ex7MonkeyApp({super.key});

  @override
  _Ex7MonkeyAppState createState() => _Ex7MonkeyAppState();
}

class _Ex7MonkeyAppState extends State<Ex7MonkeyApp> with TickerProviderStateMixin {
  bool _isHidden = true;
  String _message = '';
  late AnimationController _animationController;

  void _showMessage(String message) {
    setState(() {
      _message = message;
      _isHidden = false;
    });

    Future.delayed(Duration(seconds: 5), () {
      _animationController.reverse().whenComplete(() {
        setState(() {
          _isHidden = true;
        });
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          _showMessage('Tôi là Khỉ.');
        },
        onDoubleTap: () {
          _showMessage('Khỉ là tôi.');
        },
        child: Stack(
          children: [
            Center(
              child: Image(
                image: const AssetImage('assets/images/img_monkey.png'),
                width: 100,
                height: 100,
                fit: BoxFit.contain,
              ),
            ),
            AnimatedOpacity(
              opacity: _isHidden ? 0.0 : 1.0,
              duration: Duration(milliseconds: 300),
              child: Container(
                margin:EdgeInsets.only(top: 260, left: 70),
                width: 270,
                height: 130,
                decoration: ShapeDecoration(
                  color: Colors.blue,
                  shape: TooltipShapeBorder(arrowArc: 0.07),
                ),
                child: Center(
                  child: Text(
                    _message,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ]),
      ),
    );
  }
}

