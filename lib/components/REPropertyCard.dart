import 'package:flutter/material.dart';
import 'package:realestate_app/utils/common/re_texts.dart';
import 'package:realestate_app/utils/scale.dart' as scale;
import 'package:realestate_app/utils/theme.dart';

/// To Change:
///
/// PropertyCard with:
///  Top mixin of SALE or rent
///  Image of property background
/// Location
/// Price
/// Size
///
class REPropertyCard extends StatelessWidget {
  final String imageFile, name, location, price, status, distance;

  final double review;

  const REPropertyCard(
      {this.imageFile,
      this.status,
      this.name,
      this.location,
      this.price,
      this.distance,
      this.review});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.all(scale.value(10.0)),
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(imageFile)),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(15.0)),
      alignment: AlignmentDirectional.topStart,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10.0, top: 10),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: RECardHeader(status),
            decoration: BoxDecoration(
                color: REThemeColors.warmRed,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(7.0)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RECardText(name),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: RECardText(price),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                RECardText(location),
                SizedBox(width: 50),
                RECardText('$distance sq/m'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
