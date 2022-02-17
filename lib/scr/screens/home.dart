import 'package:flutter/material.dart';
import 'package:travel_booking_app/scr/widgets/icon_card.dart';
import 'package:travel_booking_app/scr/widgets/images_cards.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.orangeAccent[100],
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                    onPressed:(){

                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.person_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed:(){

                    },
                  )
                ],
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Hello, ',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            color: Colors.pinkAccent
                          )
                        ),
                        TextSpan(
                          text: 'what are you\nlooking for?'
                        )
                      ],
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                      )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconCard(iconData: Icons.home, text: 'Accomodation',),
                  IconCard(iconData: Icons.directions_boat, text: 'Experiences',),
                  IconCard(iconData: Icons.directions, text: 'Adventures',),
                  IconCard(iconData: Icons.flight, text: 'Flights',),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      'Best Experiences',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                        Icons.more_horiz,
                      color: Colors.black,
                    ),
                      onPressed: (){}
                  )
                ],
              ),
              SizedBox(height: 10,),
              ImagesCards(),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.home,
                        color: Colors.pink,
                        size: 30,
                      ),
                      onPressed: (){},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: (){},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: (){},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.person_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: (){},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
