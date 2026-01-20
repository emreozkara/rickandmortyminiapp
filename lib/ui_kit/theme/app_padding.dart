import 'package:flutter/material.dart';

sealed class AppPadding {
  static const baseScaffold = _PaddingConstant.all();
  static const defaultColumn = _PaddingConstant.symmetricHorizontal();
  static const half = _PaddingConstant.half();

  static const noBottom = _PaddingConstant.noBottom();

  static const defaultPage = _PaddingConstant.defaultPage();

  static const symmetricHor = _PaddingConstant.symmetricHorizontal();
  static const symmetricVer = _PaddingConstant.symmetricVertical();

  static const btn = _PaddingConstant.btn();
  static const btnIcon = _PaddingConstant.btnIcon();
  static const btnSocial = _PaddingConstant.btnSocial();
  static const input = _PaddingConstant.input();
  static const chip = _PaddingConstant.chip();
}

final class _PaddingConstant extends EdgeInsets {
  const _PaddingConstant.all() : super.all(_value);
  const _PaddingConstant.half() : super.all(_value / 2);
  const _PaddingConstant.defaultPage()
      : super.symmetric(horizontal: _value, vertical: 24);

  const _PaddingConstant.noBottom() : super.fromLTRB(_value, _value, _value, 0);

  const _PaddingConstant.symmetricHorizontal()
      : super.symmetric(horizontal: _value);
  const _PaddingConstant.symmetricVertical() : super.symmetric(vertical: 12);

  const _PaddingConstant.btn()
      : super.symmetric(horizontal: _value, vertical: _value / 2);
  const _PaddingConstant.btnIcon()
      : super.symmetric(horizontal: 12, vertical: 12);
  const _PaddingConstant.btnSocial()
      : super.symmetric(horizontal: 12, vertical: 12);
  const _PaddingConstant.input()
      : super.symmetric(horizontal: _value, vertical: _value / 2);
  const _PaddingConstant.chip() : super.symmetric(horizontal: 12, vertical: 12);

  static const double _value = 16;
}
