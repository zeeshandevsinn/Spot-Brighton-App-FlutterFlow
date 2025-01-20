// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class TreeShapeBadge extends StatefulWidget {
  const TreeShapeBadge({
    super.key,
    this.width = 80, // Default width
    this.height = 80, // Default height
    required this.text,
    required this.backgroundColor,
    required this.textColor,
  });

  final double? width;
  final double? height;
  final String text;
  final Color backgroundColor;
  final Color textColor;

  @override
  State<TreeShapeBadge> createState() => _TreeShapeBadgeState();
}

class _TreeShapeBadgeState extends State<TreeShapeBadge> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipPath(
          clipper: TreeShapeClipper(),
          child: Container(
            width: widget.width,
            height: widget.height,
            color: widget.backgroundColor,
          ),
        ),
        Text(
          widget.text,
          style: TextStyle(
            color: widget.textColor,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

class TreeShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    const double radius = 10.0;

    // Start at the top
    path.moveTo(size.width / 2, 0);

    // Top-right arc
    path.arcToPoint(
      Offset(size.width, size.height / 4),
      radius: Radius.circular(radius),
    );

    // Right edge
    path.lineTo(size.width, 3 * size.height / 4);

    // Bottom-right arc
    path.arcToPoint(
      Offset(size.width / 2, size.height),
      radius: Radius.circular(radius),
    );

    // Bottom-left arc
    path.arcToPoint(
      Offset(0, 3 * size.height / 4),
      radius: Radius.circular(radius),
    );

    // Left edge
    path.lineTo(0, size.height / 4);

    // Top-left arc
    path.arcToPoint(
      Offset(size.width / 2, 0),
      radius: Radius.circular(radius),
      clockwise: false,
    );

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
