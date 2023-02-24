import 'package:flutter/material.dart';
import 'package:state_managements/Controller/utility.dart';
import 'package:state_managements/View/Style/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);
  final String title = "State Managements App";

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size(context.width, kToolbarHeight + context.paddingTop),
      child: DecoratedBox(
        decoration:
            BoxDecoration(color: SyzBaseColors.blackS3.withOpacity(.75)),
        child: ClipRRect(
          child: Padding(
            padding: EdgeInsets.only(
              top: context.paddingTop,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
