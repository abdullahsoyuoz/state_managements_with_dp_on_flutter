import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:state_managements/Controller/Animation/background_animation.dart';
import 'package:state_managements/Controller/StateManagement/value.dart';
import 'package:state_managements/View/Clipper/slice_clipper.dart';
import 'package:state_managements/View/Views/State_Management/bottom_navigation.dart';
import 'package:state_managements/View/Paint/background_painter.dart';
import 'package:state_managements/View/Widget/custom_app_bar.dart';
import 'package:state_managements/View/Views/State_Management/counter_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    PainterAnimationController().animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
      reverseDuration: const Duration(milliseconds: 250),
    );
  }

  @override
  void dispose() {
    PainterAnimationController().animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    GlobalKey scaffoldKey = GlobalKey<ScaffoldState>();
    return ValueListenableBuilder(
        valueListenable: selectedValue,
        builder: (context, object, child) {
          return Scaffold(
            key: scaffoldKey,
            backgroundColor: selectedValue.value.colors[2],
            extendBody: true,
            // appBar: const CustomAppBar(),
            body: Stack(
              children: [
                const CounterView(),
                SizedBox.expand(
                  child: ClipPath(
                    clipper: BackgroundClipUp(
                        PainterAnimationController().animationController),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: CustomPaint(
                        painter: BackgroundPainter(
                            PainterAnimationController().animationController),
                      ),
                    ),
                  ),
                ),
                const CustomAppBar(),
              ],
            ),
            bottomNavigationBar: const BottomNavigation(),
          );
        });
  }
}
