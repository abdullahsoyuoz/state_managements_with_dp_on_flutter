import 'package:flutter/material.dart';
import 'package:state_managements/Controller/Animation/background_animation.dart';
import 'package:state_managements/Controller/StateManagement/value.dart';
import 'package:state_managements/View/Clipper/slice_clipper.dart';

class CounterText extends StatelessWidget {
  const CounterText(this.data, {super.key});
  final String data;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.05,
          child: ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                colors: [
                  selectedValue.value.colors[0],
                  selectedValue.value.colors[1],
                ],
                begin: Alignment.topRight,
                end: Alignment.centerLeft,
                stops: const [0.59, 0.6],
              ).createShader(bounds);
            },
            child: FittedBox(
              fit: BoxFit.cover,
              child: Text(
                data,
                style: const TextStyle(
                  fontSize: 125,
                  fontFamily: "futura",
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        ShaderMask(
          shaderCallback: (bounds) {
            return LinearGradient(
              colors: [
                selectedValue.value.colors[0],
                selectedValue.value.colors[1],
              ],
              begin: Alignment.topRight,
              end: Alignment.centerLeft,
              stops: const [0.59, 0.6],
            ).createShader(bounds);
          },
          child: ClipPath(
            clipper: SliceClipper(PainterAnimationController().animationController),
            child: FittedBox(
              fit: BoxFit.cover,
              child: Text(
                data,
                style: const TextStyle(
                  fontSize: 125,
                  fontFamily: "futura",
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}