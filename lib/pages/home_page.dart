import 'package:flutter/material.dart';
import 'package:flutter_find_house/models/city.dart';
import 'package:flutter_find_house/theme.dart';
import 'package:flutter_find_house/widgets/city_card.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: edge,
          ),
          child: ListView(
            children: [

              //Note: TITILE/HEADER

              Padding(
                 padding: EdgeInsets.only(
                  left: edge,
                 ),
                 child: Text('Explore Now', style: blackTextStyle.copyWith(fontSize: 24),),
               ),
               SizedBox(
                height: 2,
               ),
               Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text('Mencari kosan yang cozy', style: greyTextStyle.copyWith(fontSize: 16),),
                
               ),
               SizedBox(
                height: 30,
               ),

              //NOTE: Pupular Cities

              Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text('Popular Cities', style: regulerTextStyle.copyWith(fontSize: 16),),
              ),
              SizedBox(
                height: 16,
               ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    CityCard(
                      City(id: 1, name: 'Jakarta', imageUrl: 'assets/city1.png', isPopuler: false)
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(
                      City(id: 2, name: 'Bandung', imageUrl: 'assets/city2.png', isPopuler: true)
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(
                      City(id: 1, name: 'Tangerang', imageUrl: 'assets/city3.png', isPopuler: false)
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
            //NOTE: RECOMENDED SPACE
              Padding(
                padding: EdgeInsets.only(
                left: edge,
                ),
                child: Text('Recomended Space', style: blackTextStyle.copyWith(fontSize: 24),),
              ),
              SizedBox(
                height: 16,
              ),

            ],
          ),
        ),
      ),
    );
  }
}