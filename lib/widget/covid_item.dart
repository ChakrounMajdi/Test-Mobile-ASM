import 'package:flutter/material.dart';

class CovidItem extends StatelessWidget {
  const CovidItem({
    Key? key,
    required this.itemValue,
    required this.itemLabel,
  }) : super(key: key);
  final String itemLabel;
  final String itemValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(itemLabel, style: Theme.of(context).textTheme.bodyText2),
          Text(
            itemValue,
            style: Theme.of(context).textTheme.bodyText1,
          )
        ],
      ),
    );
  }
}
