import 'package:flutter/material.dart';

final class AppRadius extends BorderRadius {
  AppRadius.all() : super.circular(12);
  AppRadius.button() : super.circular(8);
  AppRadius.input() : super.circular(8);
  AppRadius.buttonRect() : super.circular(24);
  AppRadius.picker() : super.circular(12);
  AppRadius.card() : super.circular(12);
  AppRadius.selection() : super.circular(12);
  AppRadius.image() : super.circular(20);
  AppRadius.section() : super.circular(16);
}
