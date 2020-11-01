import 'package:flutter/material.dart';
import 'package:realestate_app/components/REPropertyCard.dart';
import 'package:realestate_app/components/search_field.dart';
import 'package:realestate_app/ui/bottom_sheet_results.dart';
import 'package:realestate_app/utils/common/re_texts.dart';
import 'package:realestate_app/utils/common/text_button.dart';
import 'package:realestate_app/utils/scale.dart' as scale;
import 'package:realestate_app/utils/theme.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: REThemeColors.lightGray,
      /*appBar: AppBar(
        title: REAppBarHeader(''),
        centerTitle: true,
        elevation: 3,
        backgroundColor: REThemeColors.deepGray,
      ),*/
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(scale.value(10.0)),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Expanded(
                  child: SearchField(),
                ),
              ),
              /*Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: SearchField(),
                  ),
                ],
              ),*/
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RETextButton('Rentals', onPressed: () {
                      print("Rent was pressed Yo.");
                    }),
                    RETextButton('For Sale', onPressed: () {
                      print("For Sale was pressed Yo.");
                    }),
                    RETextButton(
                      'Filter',
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) => FilterBottomSheetScreen());
                      },
                    ),
                  ],
                ),
                /*mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                ],*/
              ),
              Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 20.0, top: 20.0),
                    child: Row(
                      children: <Widget>[
                        RETitle('11 Results Found'),
                      ],
                    ),
                  ),
                  REPropertyCard(
                    imageFile: 'assets/img/h1.jpg',
                    status: 'For Sale',
                    name: 'Clinton Villa',
                    location: 'Los Angeles',
                    price: '\$3,500.00',
                    distance: '2,456',
                  ),
                  REPropertyCard(
                    imageFile: 'assets/img/h2.jpeg',
                    status: 'For Rent',
                    name: 'Hilton Villa',
                    location: 'California',
                    price: '\$3,100.00',
                    distance: '2,100',
                  ),
                  REPropertyCard(
                    imageFile: 'assets/img/h0.jpg',
                    status: 'For Sale',
                    name: 'IBE House',
                    location: 'Florida',
                    price: '\$4,500.00',
                    distance: '4,100',
                  ),
                  REPropertyCard(
                    imageFile: 'assets/img/h2.jpeg',
                    status: 'For Rent',
                    name: 'Syokimau Mansions',
                    location: 'Florida',
                    price: '\$4,500.00',
                    distance: '4,100',
                  ),
                  REPropertyCard(
                    imageFile: 'assets/img/h1.jpg',
                    status: 'For Sale',
                    name: 'Daykio Bustani',
                    location: 'Kiambu',
                    price: '\$8,500.00',
                    distance: '7,456',
                  ),
                  REPropertyCard(
                    imageFile: 'assets/img/h0.jpg',
                    status: 'For Sale',
                    name: 'Buruburu Phase 4',
                    location: 'BuruBuru',
                    price: '\$1,500.00',
                    distance: '5,456',
                  ),
                  REPropertyCard(
                    imageFile: 'assets/img/h2.jpeg',
                    status: 'For Rent',
                    name: 'Hilton Villa',
                    location: 'California',
                    price: '\$3,100.00',
                    distance: '2,100',
                  ),
                  REPropertyCard(
                    imageFile: 'assets/img/h2.jpeg',
                    status: 'For Rent',
                    name: 'Hilton Villa',
                    location: 'California',
                    price: '\$3,100.00',
                    distance: '2,100',
                  ),
                  REPropertyCard(
                    imageFile: 'assets/img/h2.jpeg',
                    status: 'For Rent',
                    name: 'Hilton Villa',
                    location: 'California',
                    price: '\$3,100.00',
                    distance: '2,100',
                  ),
                  REPropertyCard(
                    imageFile: 'assets/img/h2.jpeg',
                    status: 'For Rent',
                    name: 'Hilton Villa',
                    location: 'California',
                    price: '\$3,100.00',
                    distance: '2,100',
                  ),
                  REPropertyCard(
                    imageFile: 'assets/img/h0.jpg',
                    status: 'For Sale',
                    name: 'Hilton Villa',
                    location: 'California',
                    price: '\$3,100.00',
                    distance: '2,100',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
