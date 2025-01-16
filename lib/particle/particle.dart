import 'dart:math';

import 'package:flutter/material.dart';

class Particle {
  static final Random _random = Random();

  final Color color;
  final double size;
  Offset position;
  Offset velocity;
  double leftPadding;

  Particle({
    required this.color,
    required this.size,
    required this.position,
    required this.velocity,
    this.leftPadding = 0,
  });

  // Factory method to create a random particle
  factory Particle.random(Size canvasSize, List<Color> colorList) {
    return Particle(
      color: colorList[_random.nextInt(colorList.length)],
      size: 11 + _random.nextDouble() * 3, // Random size between 11 and 14
      position: Offset(
        _random.nextDouble() * 50,
        _random.nextDouble() * 50,
      ),
      velocity: Offset(
        (_random.nextDouble() - 0.5) * 1, // Random horizontal velocity
        (_random.nextDouble() + 0.2) * -1, // Random vertical velocity
      ),
    );
  }

  void update(Size canvasSize) {
    // Update position based on velocity
    position += velocity;

    // Bounce particles off the edges of the canvas
    if (position.dx <= 0 || position.dx >= leftPadding + 80) {
      position = Offset(leftPadding + 11, 40);
      velocity = Offset(-velocity.dx, velocity.dy);
    }
    if (position.dy <= 0 || position.dy >= 60) {
      position = Offset(leftPadding + 11, 40);
      velocity = Offset(velocity.dx, velocity.dy);
    }
  }
}
