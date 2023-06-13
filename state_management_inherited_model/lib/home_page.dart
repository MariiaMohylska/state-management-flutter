import 'package:flutter/material.dart';
import 'package:state_management_inherited_model/available_colors_widget.dart';
import 'package:state_management_inherited_model/color_widget.dart';
import 'package:state_management_inherited_model/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var color1 = Colors.blue;
  var color2 = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: AvailableColorsWidget(
        color1: color1,
        color2: color2,
        child: Column(
          children: [
            Row(
              children: [
                TextButton(onPressed: (){
                  setState(() {
                    color1 = colors.getRandomElement();
                  });
                }, child: const Text('Change Color 1')),
                TextButton(onPressed: (){
                  setState(() {
                    color2 = colors.getRandomElement();
                  });
                }, child: const Text('Change Color 2')),
              ],
            ),
            const ColorWidget(color: AvailableColors.one),
            const ColorWidget(color: AvailableColors.two),
          ],
        ),
      ),
    );
  }
}