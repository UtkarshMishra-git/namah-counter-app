import 'package:flutter/material.dart';
import 'package:namah_counter/core/theme/core-theme-app_theme.dart';

class CounterDisplay extends StatefulWidget {
  final int value;

  const CounterDisplay({
    super.key,
    required this.value,
  });

  @override
  State<CounterDisplay> createState() => _CounterDisplayState();
}

class _CounterDisplayState extends State<CounterDisplay>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  int _previousValue = 0;

  @override
  void initState() {
    super.initState();
    _previousValue = widget.value;

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 1.1,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.elasticOut,
    ));
  }

  @override
  void didUpdateWidget(CounterDisplay oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.value != _previousValue) {
      _previousValue = widget.value;
      _animationController.forward().then((_) {
        _animationController.reverse();
      });
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _scaleAnimation,
      builder: (context, child) {
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: Container(
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppTheme.primaryOrange,
                  AppTheme.secondaryOrange,
                  AppTheme.goldenYellow,
                ],
              ),
              borderRadius:
                  BorderRadius.circular(24), // Square with rounded corners
              boxShadow: [
                BoxShadow(
                  color: AppTheme.primaryOrange.withOpacity(0.3),
                  blurRadius: 20,
                  spreadRadius: 2,
                  offset: const Offset(0, 8),
                ),
                BoxShadow(
                  color: Colors.white.withOpacity(0.8),
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: const Offset(0, -4),
                ),
              ],
            ),
            child: Center(
              child: Text(
                '${widget.value}',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: Colors.white,
                  fontSize: widget.value.toString().length > 4 ? 32 : 48,
                  fontWeight: FontWeight.w800,
                  shadows: [
                    const Shadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
