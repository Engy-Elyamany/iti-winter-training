import 'package:flutter/material.dart';
import 'package:iti_training/my_app_bar.dart';
import 'package:iti_training/resources/colorManager.dart';
import 'package:iti_training/resources/styleManager.dart';

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color_manage.BG,
      appBar: my_app_bar(),
    );
  }
}

