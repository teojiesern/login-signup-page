import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  double borderRadius = 0, opacity = 0;
  String message = "";
  int color = 0;
  InputField(
      {required this.borderRadius,
      required this.color,
      required this.opacity,
      required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(70, 25, 70, 0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                  labelText: message,
                  filled: true,
                  fillColor: Color(color).withOpacity(opacity),
                  labelStyle: TextStyle(fontSize: 18),
                  contentPadding: EdgeInsets.all(15)),
            ),
          )
        ],
      ),
    );
  }
}
