import 'package:flutter/material.dart';
import 'package:realestate_app/utils/theme.dart';

class REQuickAction extends StatelessWidget {
  const REQuickAction({
    Key key,
    @required this.label,
    this.color,
  }) : super(key: key);

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 300,
          decoration: BoxDecoration(
            color: RETheme.of(context).lightGray,
            // borderRadius: BorderRadius.circular(50),
            shape: BoxShape.circle,
          ),
        ),
        Text(label)
      ],
    );
  }
}

///REQuickAction has icon as default instead of Coloured
///Circle.
class REQuickActionIcon extends StatelessWidget {
  const REQuickActionIcon({
    Key key,
    @required this.label,
    this.icons,
  }) : super(key: key);

  final String label;
  final Icons icons;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          /// Icon Circle is placed here
          Icons.add_circle,

          /// Overlays a color lightGray
          /// on top of the icons, to be deleted later.
          color: RETheme.of(context).lightGray,
        ),
        Text(label)
      ],
    );
  }
}

///REQuickAction has image as default instead of Coloured
///Circle or icon.

class REQuickActionImage extends StatelessWidget {
  const REQuickActionImage({
    Key key,
    @required this.label,
    this.image,
  }) : super(key: key);

  final String label;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        /* Using Flutter Logo as a place holder image*/
        FlutterLogo(
          size: 40,
        ),

        /// This below block if code replaces the FLutter logo for
        /// REQuickAction with an image
        /// Assumes that we will:
        /// 1. Added dependency:
        ///  flutter:
        ///    assets:
        ///      - assets/images/
        ///
        /// 2. place an image folder at :
        /// 'Assets' >> 'images' and inside an image called
        /// quickAction.png or quickAction.svg
        ///
        /// Image(
        ///  Image.asset('assets/images/quickAction.png'),
        /// ),
        /// Image(
        /// Image.asset('assets/images/quickAction.svg'),
        /// ),
        Text(label)
      ],
    );
  }
}
