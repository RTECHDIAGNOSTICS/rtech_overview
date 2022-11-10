import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import '../../utils/size_config.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final Function()? function;
  const DrawerItem(this.title, this.function, {super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              TextButton(
                onPressed: function!,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontSize: SizeConfig.sW! * 6.5,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Assets.svgs.arrow.svg(),
            ],
          ),
        ],
      ),
    );
  }
}
