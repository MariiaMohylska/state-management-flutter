import 'package:flutter/material.dart';
import 'package:state_management_inherited_model/available_colors_widget.dart';
import 'package:state_management_inherited_model/utils.dart';
import 'dart:developer' as devtools show log;

class ColorWidget extends StatelessWidget {
  final AvailableColors color;

  const ColorWidget({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    switch (color) {
      case AvailableColors.one:
        devtools.log('Color1 widget got rebuilt!');
      case AvailableColors.two:
        devtools.log('Color2 widget got rebuilt!');
    }

    final provider = AvailableColorsWidget.of(context, color);

    return Container(
      height: 100,
      color: color == AvailableColors.one ? provider.color1 : provider.color2,
    );
  }
}