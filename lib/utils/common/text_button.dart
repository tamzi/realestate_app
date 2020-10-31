import 'package:flutter/material.dart';
import 'package:realestate_app/utils/common/re_texts.dart';

/// This is a text that functions as a button.
///
/// When tapped/clicked an onPressed callback is called. The text also has
/// touch feedback when tapped.
///
/// # Usage
///  Check the component_gallery.dart

class RETextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool iOS;
  const RETextButton(this.text, {Key key, this.onPressed})
      : this.iOS = false,
        super(key: key);

  RETextButton.iOS(this.text, {Key key, this.onPressed})
      : this.iOS = true,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final textContainer =
        Container(padding: EdgeInsets.all(1.0), child: REBodyText(text));

    if (this.iOS) {
      return GestureDetector(
        child: textContainer,
        onTap: onPressed ?? () {},
      );
    } else {
      return InkWell(
        onTap: onPressed ?? () {},
        child: textContainer,
      );
    }
  }
}
