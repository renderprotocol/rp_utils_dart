import 'package:rp_generated_dart/rp_generated_dart.dart';

extension RPWidgetExtension on RPWidget {
  set border(RPBorder border) {
    final modifier = RPModifier();
    modifier.border = border;
    this.modifiers.add(modifier);
  }

  set padding(RPPadding padding) {
    final modifier = RPModifier();
    modifier.padding = padding;
    this.modifiers.add(modifier);
  }

  set backgroundColor(RPColor color) {
    final modifier = RPModifier();
    modifier.backgroundColor = color;
    this.modifiers.add(modifier);
  }

  set clip(RPClip clip) {
    final modifier = RPModifier();
    modifier.clip = clip;
    this.modifiers.add(modifier);
  }
}
