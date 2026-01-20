import 'package:flutter/material.dart';
import '../../main.dart';

final class Go {
  static Future<T?> to<T>(String path, {Object? arguments}) async {
    final context = _getCurrentContext();
    if (context != null) {
      return Navigator.pushNamed<T>(context, path, arguments: arguments);
    }
    return null;
  }

  static Future<T?> andReplace<T>(String path, {Object? arguments}) async {
    final context = _getCurrentContext();
    if (context != null) {
      return Navigator.pushReplacementNamed<T, dynamic>(
        context,
        path,
        arguments: arguments,
      );
    }
    return null;
  }

  static void back<T>([T? result]) {
    final context = _getCurrentContext();
    if (context != null) {
      Navigator.pop<T>(context, result);
    }
  }

  static BuildContext? _getCurrentContext() {
    try {
      return rootNavigatorKey.currentContext;
    } catch (e) {
      return null;
    }
  }
}
