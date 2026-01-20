import 'package:flutter/material.dart';

class Gap extends SizedBox {
  const Gap(double size, {super.key}) : super(width: size, height: size);

  const Gap.xxs({super.key}) : super(width: _v, height: _v);

  const Gap.xs({super.key}) : super(width: _v * 2, height: _v * 2);

  const Gap.s({super.key}) : super(width: _v * 3, height: _v * 3);

  const Gap.m({super.key}) : super(width: _v * 4, height: _v * 4);

  const Gap.l({super.key}) : super(width: _v * 5, height: _v * 5);

  const Gap.xl({super.key}) : super(width: _v * 6, height: _v * 6);

  const Gap.xxl({super.key}) : super(width: _v * 7, height: _v * 7);

  const Gap.xxxl({super.key}) : super(width: _v * 8, height: _v * 8);

  const Gap.max(double mainAxisExtend,
      {super.key, double crossAxisExtend = double.infinity})
      : super(
          width: mainAxisExtend,
          height: crossAxisExtend,
        );

  static const double _v = 4;
}

class SliverGap extends SliverToBoxAdapter {
  const SliverGap.xxs({super.key}) : super(child: const Gap.xxs());

  const SliverGap.xs({super.key}) : super(child: const Gap.xs());

  const SliverGap.s({super.key}) : super(child: const Gap.s());

  const SliverGap.m({super.key}) : super(child: const Gap.m());

  const SliverGap.l({super.key}) : super(child: const Gap.l());

  const SliverGap.xl({super.key}) : super(child: const Gap.xl());

  const SliverGap.xxl({super.key}) : super(child: const Gap.xxl());

  const SliverGap.xxxl({super.key}) : super(child: const Gap.xxxl());
}
