import 'package:flutter/material.dart';
import 'package:state_managements/Controller/StateManagement/value.dart';

class CounterView extends StatelessWidget {
  const CounterView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedValue,
      builder: (context, object, value) {
        return SizedBox.expand(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "You have pushed +1 button this many times:",
                  style: TextStyle(
                      color: Colors.white, fontFamily: "futura", fontSize: 17),
                ),
                selectedValue.value.handler.watch(context),
              ],
            ),
          ),
        );
      }
    );
  }
}
