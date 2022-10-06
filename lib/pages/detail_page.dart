// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_find_house/theme.dart';
import 'package:flutter_find_house/widgets/facility.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Image.asset(
                'assets/thumbnail.png',
                width: MediaQuery.of(context).size.width,
                height: 350,
                fit: BoxFit.cover,
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
                                    'Kuretakeso Hott',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 22,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                        text: '\$52 ',
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
                                total: 2,
                              ),
                              FacilityItem(
                                imageUrl: 'assets/icon_bedroom.png',
                                name: 'bedroom',
                                total: 3,
                              ),
                              FacilityItem(
                                imageUrl: 'assets/icon_cupboard.png',
                                name: 'Big Lemari',
                                total: 3,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
