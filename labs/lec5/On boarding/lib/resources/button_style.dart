import 'package:flutter/material.dart';
import 'package:iti_training/resources/colorManager.dart';

class button_style {
  button_style._();

  static ButtonStyle primaryButton = ElevatedButton.styleFrom(
      backgroundColor: color_manager.secondary_color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)));

  static ButtonStyle secondaryButton = OutlinedButton.styleFrom(
      backgroundColor: color_manager.primary_color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      side: BorderSide(width: 1, color: color_manager.grey_button_color));
}
