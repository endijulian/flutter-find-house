// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_find_house/models/city.dart';
import 'package:flutter_find_house/models/space.dart';
import 'package:flutter_find_house/models/tips.dart';
import 'package:flutter_find_house/theme.dart';
import 'package:flutter_find_house/widgets/buttom_navbar_item.dart';
import 'package:flutter_find_house/widgets/city_card.dart';
import 'package:flutter_find_house/widgets/space_card.dart';
import 'package:flutter_find_house/widgets/tips_card.dart';

class  HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            //Note: TITILE/HEADER

            Padding(
               padding: EdgeInsets.only(
                left: edge,
               ),
               child: Text('Explore Now', style: blackTextStyle.copyWith(fontSize: 24),),
             ),
             const SizedBox(
              height: 2,
             ),
             Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text('Mencari kosan yang cozy', style: greyTextStyle.copyWith(fontSize: 16),),
              
             ),
             const SizedBox(
              height: 30,
             ),

            //NOTE: Pupular Cities

            Padding(
            padding: EdgeInsets.only(left: edge),
            child: Text('Popular Cities', style: regulerTextStyle.copyWith(fontSize: 16),),
            ),
            const SizedBox(
              height: 16,
             ),
            // ignore: sized_box_for_whitespace
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 24,
                  ),
                  CityCard(
                    City(id: 1, name: 'Jakarta', imageUrl: 'assets/city1.png', isPopuler: false)
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(id: 2, name: 'Bandung', imageUrl: 'assets/city2.png', isPopuler: true)
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(id: 1, name: 'Tangerang', imageUrl: 'assets/city3.png', isPopuler: false)
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          //NOTE: RECOMENDED SPACE
            Padding(
              padding: EdgeInsets.only(
              left: edge,
              ),
              child: Text('Recomended Space', style: blackTextStyle.copyWith(fontSize: 16),),
            ),
            const SizedBox(
              height: 16
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge
              ),
              child: Column(
                children: [
                  SpaceCard(
                    Space(
                      id: 1, 
                      name: 'Kuretakeso Hott', 
                      imgaeUrl: 'assets/space1.png', 
                      price: 52, 
                      city: 'Bandung', 
                      country: 'Germany', 
                      rating: 4,
                    )
                  ),
                  const SizedBox(
                    height: 30
                  ),
                  SpaceCard(
                    Space(
                      id: 2, 
                      name: 'Roemah Nenek', 
                      imgaeUrl: 'assets/space2.png', 
                      price: 11, 
                      city: 'Seattle', 
                      country: 'Bogor', 
                      rating: 5,
                    )
                  ),
                  const SizedBox(
                    height: 30
                  ),
                  SpaceCard(
                    Space(
                      id: 3, 
                      name: 'Darrling How', 
                      imgaeUrl: 'assets/space3.png', 
                      price: 20, 
                      city: 'Jakarta', 
                      country: 'Indonesia', 
                      rating: 3,
                    )
                  ),
                  const SizedBox(
                    height: 30
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            //NOTE: Tips & Guidance
            Padding(
              padding: EdgeInsets.only(
              left: edge,
              ),
              child: Text('Tips & Guidance', style: blackTextStyle.copyWith(fontSize: 16),),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge
              ),
              child: Column(
                children:[
                  TipsCard(
                    Tips(
                      id: 1, 
                      title: 'City Guidelines', 
                      imageUrl: 'assets/tips1.png', 
                      updatedAt: '20 Apr',
                    )
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    Tips(
                      id: 2, 
                      title: 'Jakarta Fairship', 
                      imageUrl: 'assets/tips2.png', 
                      updatedAt: '11 Dec',
                    )
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 85  ,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/icon_home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_gmail.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_card.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_love.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}