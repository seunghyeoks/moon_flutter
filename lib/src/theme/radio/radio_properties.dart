import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:moon_design/src/theme/typography/text_styles.dart';

@immutable
class MoonRadioProperties extends ThemeExtension<MoonRadioProperties> with DiagnosticableTreeMixin {
  static final properties = MoonRadioProperties(
    textStyle: MoonTextStyles.body.textDefault,
  );

  /// Radio text style.
  final TextStyle textStyle;

  const MoonRadioProperties({
    required this.textStyle,
  });

  @override
  MoonRadioProperties copyWith({
    TextStyle? textStyle,
  }) {
    return MoonRadioProperties(
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  MoonRadioProperties lerp(ThemeExtension<MoonRadioProperties>? other, double t) {
    if (other is! MoonRadioProperties) return this;

    return MoonRadioProperties(
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "MoonRadioProperties"))
      ..add(DiagnosticsProperty<TextStyle>("textStyle", textStyle));
  }
}
