import 'package:flutter/material.dart';
import 'package:iti_training/resources/colorManager.dart';

class text_styles {
  text_styles._();

  static const TextStyle title_style = TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.bold,
      fontFamily: 'PlusJakartaSans',
      color: color_manager.title_color,
  );

  static const TextStyle description = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      fontFamily: 'PlusJakartaSans',
      color: color_manager.grey_color);

  static const TextStyle primaryButtonText = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.normal,
      fontFamily: 'PlusJakartaSans',
      color: color_manager.primary_color);

  static const TextStyle secondaryButtonText = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.normal,
      fontFamily: 'PlusJakartaSans',
      color: color_manager.secondary_color);
}
