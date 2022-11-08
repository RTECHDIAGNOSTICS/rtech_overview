import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';

class NavBarItem extends StatelessWidget {
  final String? text;
  final Function()? function;

  const NavBarItem({
    Key? key,
    @required this.text,
    @required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: function!,
          child: Text(
            text!,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const SizedBox(width: 5,),
        Assets.svgs.arrow.svg(),
      ],
    );
  }
}
