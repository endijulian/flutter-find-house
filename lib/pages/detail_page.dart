// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_find_house/models/space.dart';
import 'package:flutter_find_house/pages/error_page.dart';
import 'package:flutter_find_house/theme.dart';
import 'package:flutter_find_house/widgets/facility.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  final Space space;
  const DetailPage(this.space, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        // throw (url);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ErrorPage(),
          ),
        );
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.network(
              '${space.imgaeUrl}',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        //NOTE: TITLE

                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${space.name}',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 22,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                      text: '\$${space.price} ',
                                      style: purpleTextStyle.copyWith(
                                        fontSize: 16,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: '/ month ',
                                          style: greyTextStyle.copyWith(
                                              fontSize: 16),
                                        )
                                      ]),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icon_start.png',
                                  width: 20,
                                ),
                                Image.asset(
                                  'assets/icon_start.png',
                                  width: 20,
                                ),
                                Image.asset(
                                  'assets/icon_start.png',
                                  width: 20,
                                ),
                                Image.asset(
                                  'assets/icon_start.png',
                                  width: 20,
                                ),
                                Image.asset(
                                  'assets/icon_start.png',
                                  width: 20,
                                  color: Color(0xff989BA1),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      //NOTE: MAIN FACILITIES

                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Main Facilities',
                          style: regulerTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            FacilityItem(
                              imageUrl: 'assets/icon_kitchen.png',
                              name: 'kitchen',
                              total: space.numberOfKitchens,
                            ),
                            FacilityItem(
                              imageUrl: 'assets/icon_bedroom.png',
                              name: 'bedroom',
                              total: space.numberOfBedrooms,
                            ),
                            FacilityItem(
                              imageUrl: 'assets/icon_cupboard.png',
                              name: 'Big Lemari',
                              total: space.numberOfCupboards,
                            ),
                          ],
                        ),
                      ),

                      //NOTE: PHOTO
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Photos',
                          style: regulerTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      // ignore: sized_box_for_whitespace
                      Container(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: space.photosDet!.map((itemImage) {
                            return Container(
                              margin: EdgeInsets.only(
                                left: 24,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.network(
                                  itemImage,
                                  width: 110,
                                  height: 88,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Location',
                          style: regulerTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${space.address}\n${space.city}',
                              style: greyTextStyle,
                            ),
                            InkWell(
                              onTap: () {
                                launchUrl('${space.mapUrl}');
                                // launchUrl('fdf');
                              },
                              child: Image.asset(
                                'assets/btn_maps.png',
                                width: 40,
                                height: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width - (2 * edge),
                        child: ElevatedButton(
                          onPressed: () {
                            launchUrl('tel:${space.phone}');
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(purpleColor),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17),
                              ),
                            ),
                          ),
                          child: Text(
                            'Book Now',
                            style: whiteTextStyle.copyWith(fontSize: 18),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/btn_back.png',
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/btn_wishlist.png',
                    width: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
