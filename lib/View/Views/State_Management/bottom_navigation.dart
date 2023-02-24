import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:state_managements/Controller/Animation/background_animation.dart';
import 'package:state_managements/Controller/StateManagement/value.dart';
import 'package:state_managements/Controller/utility.dart';

// ignore: must_be_immutable
class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<DropdownMenuItem> list = stateManagementsList
        .map((e) => DropdownMenuItem(
              value: e,
              child: Text(e.package),
            ))
        .toList();

    return ValueListenableBuilder(
        valueListenable: selectedValue,
        builder: (context, object, child) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: context.paddingBottom, left: 8, right: 8),
            child: SizedBox(
              width: context.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      height: kToolbarHeight,
                      width: 100,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(kToolbarHeight * 0.5)),
                        color: selectedValue.value.colors[0],
                      ),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: DropdownButton(
                            icon: const SizedBox(),
                            style: const TextStyle(fontFamily: "futura", color: Colors.black, fontSize: 17),
                            underline: const SizedBox(),
                            alignment: Alignment.center,
                            borderRadius:
                                BorderRadius.circular(kToolbarHeight * 0.5),
                            isExpanded: true,
                            value: selectedValue.value,
                            items: list,
                            dropdownColor: selectedValue.value.colors[1],
                            onChanged: (value) {
                              PainterAnimationController().animate(
                                () {
                                  selectedValue.value = value;
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('Selected $value'),
                                      backgroundColor: selectedValue.value.colors[2],
                                      duration:
                                          const Duration(milliseconds: 1500),
                                      behavior: SnackBarBehavior.floating,
                                    ),
                                  );
                                },
                              );
                            },
                          )),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: FloatingActionButton(
                          backgroundColor: selectedValue.value.colors[0],
                          heroTag: "reset",
                          onPressed: () {
                            PainterAnimationController().animate(() {
                              selectedValue.value.handler.reset(context);
                            });
                          },
                          child: const Icon(
                            FontAwesomeIcons.recycle,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: FloatingActionButton(
                          heroTag: "increment",
                          backgroundColor: selectedValue.value.colors[1],
                          onPressed: () {
                            PainterAnimationController().animate(() {
                              selectedValue.value.handler.state(context);
                            });
                          },
                          child: const Center(
                            child: Text(
                              "+1",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontFamily: "futura",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
