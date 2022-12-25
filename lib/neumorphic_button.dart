import 'package:flutter/material.dart';

class NeumorphismEffectScreen extends StatefulWidget {
  final String text;
  final Color textColor;
  VoidCallback onPress;

  NeumorphismEffectScreen(
      {required this.text,
        required this.textColor,
        required this.onPress,
        Key? key})
      : super(key: key);

  @override
  _NeumorphismEffectScreenState createState() =>
      _NeumorphismEffectScreenState();
}

class _NeumorphismEffectScreenState extends State<NeumorphismEffectScreen> {
  bool isElevated = true;
  VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Center(
        child: GestureDetector(
          onTap: widget.onPress,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 900),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(50),
                boxShadow: isElevated
                ? [
                BoxShadow(
                  color: Colors.grey[500]!,
                  offset: const Offset(4, 4),
                  blurRadius: 15,
                  spreadRadius: 1,
                ),
                const BoxShadow(
                  color: Colors.white,
                  offset: const Offset(-4, -4),
                  blurRadius: 15,
                  spreadRadius: 1,
                )
                ]
                : null,
              ),
              child: Center(
                child: Text(widget.text,
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.normal,
                        color: widget.textColor)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}