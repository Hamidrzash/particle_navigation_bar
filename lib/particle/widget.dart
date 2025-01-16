import 'package:flutter/material.dart';
import 'package:particle_navigation_bar/particle/painter.dart';

import 'particle.dart';

class FloatingParticleWidget extends StatefulWidget {
  final List<Color> colorList;
  final int particleCount;
  final double leftPadding;

  const FloatingParticleWidget({
    Key? key,
    required this.colorList,
    this.particleCount = 50,
    this.leftPadding = 0,
  }) : super(key: key);

  @override
  _FloatingParticleWidgetState createState() => _FloatingParticleWidgetState();
}

class _FloatingParticleWidgetState extends State<FloatingParticleWidget> with SingleTickerProviderStateMixin {
  late List<Particle> particles;
  late AnimationController _controller;
  bool _isInitialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (!_isInitialized) {
      final canvasSize = MediaQuery.of(context).size;
      // Initialize particles
      particles = List.generate(
        widget.particleCount,
        (_) => Particle.random(canvasSize, widget.colorList),
      );

      // Animation controller
      _controller = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 16),
      )..addListener(() {
          setState(() {
            for (final particle in particles) {
              particle.update(canvasSize);
            }
          });
        });

      _controller.repeat();
      _isInitialized = true;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    particles = particles..map((e) => e.leftPadding = widget.leftPadding).toList();
    return CustomPaint(
      painter: ParticlePainter(particles),
      size: Size.infinite,
    );
  }
}
