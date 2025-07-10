import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgWidget extends StatelessWidget {
  const SvgWidget(this.assetName, {super.key, this.size = 24, this.color});

  final String assetName;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      width: size,
      height: size,
      colorFilter: _colorFilter,
    );
  }

  ColorFilter? get _colorFilter {
    if (color != null) {
      return ColorFilter.mode(color!, BlendMode.srcIn);
    }
    return null;
  }
}
