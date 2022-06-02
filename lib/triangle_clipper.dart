import 'package:flutter/material.dart';

class TriangleClipper extends CustomClipper<Path> {
  List<Offset> _extractPoints(String clipPath, Size size) {
    final points = List<Offset>.empty(growable: true);

    var tempString = clipPath.replaceAll("%", "");
    tempString = tempString.replaceAll(", ", ",");

    final pointStrings = tempString.split(",");

    for (final pointString in pointStrings) {
      final coord = pointString.split(" ");

      if (coord.length == 2) {
        points.add(
          Offset(
            (double.parse(coord[0]) * size.width / 100),
            (double.parse(coord[1]) * size.height / 100),
          ),
        );
      }
    }

    return points;
  }

  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    final path = Path();

    final clipPath =
        '50% 0%, 61% 35%, 98% 35%, 68% 57%, 79% 91%, 50% 70%, 21% 91%, 32% 57%, 2% 35%, 39% 35%';

    final points = _extractPoints(clipPath, size);

    path.addPolygon(points, true);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
