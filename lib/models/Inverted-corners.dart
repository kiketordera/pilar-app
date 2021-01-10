import 'package:flutter/material.dart';

class InvertedBorders extends ShapeBorder {
  final double radius;
  final double pathWidth;
  final bool rounded;

  InvertedBorders(
      {@required this.radius, @required this.rounded, this.pathWidth = 1});

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) {
    return Path()
      ..fillType = PathFillType.evenOdd
      ..addPath(getOuterPath(rect, textDirection: textDirection), Offset.zero);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) =>
      _createPath(rect);

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {}

  @override
  ShapeBorder scale(double t) => InvertedBorders(radius: radius);

  Path _createPath(Rect rect) {
    final innerRadius = radius + pathWidth;
    final innerRect = Rect.fromLTRB(rect.left + pathWidth, rect.top + pathWidth,
        rect.right - pathWidth, rect.bottom - pathWidth);

    final outer = Path.combine(PathOperation.difference, Path()..addRect(rect),
        _createBevels(rect, radius));
    final inner = Path.combine(PathOperation.difference,
        Path()..addRect(innerRect), _createBevels(rect, innerRadius));
    return Path.combine(PathOperation.difference, outer, inner);
  }

  Path _createBevels(Rect rect, double radius) {
    if (rounded) {
      return Path()
        ..addOval(Rect.fromCircle(
            center: Offset(rect.left, rect.top), radius: radius))
        ..addOval(Rect.fromCircle(
            center: Offset(rect.left + rect.width, rect.top), radius: radius))
        ..addOval(Rect.fromCircle(
            center: Offset(rect.left, rect.top + rect.height), radius: radius))
        ..addOval(Rect.fromCircle(
            center: Offset(rect.left + rect.width, rect.top + rect.height),
            radius: radius));
    }
    return Path()
      ..addRect(
          Rect.fromCircle(center: Offset(rect.left, rect.top), radius: radius))
      ..addRect(Rect.fromCircle(
          center: Offset(rect.left + rect.width, rect.top), radius: radius))
      ..addRect(Rect.fromCircle(
          center: Offset(rect.left, rect.top + rect.height), radius: radius))
      ..addRect(Rect.fromCircle(
          center: Offset(rect.left + rect.width, rect.top + rect.height),
          radius: radius));
  }
}
