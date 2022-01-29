import 'dart:math';

void main() {
  var point = Point(2, -4, 9, -4, 8, -9);

  print(point.findS(3, 4, 5));
  print(point.distanceTo(point));
}

class Point {
  final double x;
  final double y;
  final double z;
  final double x1;
  final double y1;
  final double z1;

  Point(this.x, this.y, this.z, this.x1, this.y1, this.z1);

  distanceTo(Point another) {
    double sX = x1 - x;
    double sY = y1 - y;
    double sZ = z1 - z;
    double sCoord = sqrt((sX * sX) + (sY * sY) + (sZ * sZ));
    return sCoord;
  }

  findS(int a, int b, int c) {
    var p = (a + b + c) / 2;
    var s = sqrt(p * (p - a) * (p - b) * (p - c));
    return s;
  }

  factory Point.zero() {
    return Point(0, 0, 0, 0, 0, 0);
  }
}
