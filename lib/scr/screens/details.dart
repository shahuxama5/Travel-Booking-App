import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_booking_app/scr/models/places.dart';
import 'package:travel_booking_app/scr/widgets/images_cards.dart';

class Details extends StatelessWidget {

  final Place place;

  Details(this.place);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)
                  ),
                  child: Image.asset(
                    'Assets/Images/${place.images}',
                    height: 400,
                      width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14),
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      color: Colors.grey,
                      size: 20,
                    ),
                    SizedBox(width: 5,),
                    Text(
                      '${place.days} days',
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '${place.place}\n',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                          )
                        ),
                        TextSpan(
                          text: '${place.text}'
                        )
                      ],
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                      )
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                    color: Colors.pink[400]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Price\n',
                                style: TextStyle(
                                  fontSize: 18
                                ),
                              ),
                              TextSpan(
                                text: '${place.price}',
                                style: TextStyle(
                                    fontSize: 26,
                                  fontWeight: FontWeight.bold
                                ),
                              )
                            ]
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 8,
                                offset: Offset(1,1)
                              )
                            ]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: GestureDetector(
                              onTap: (){

                              },
                              child: Container(
                                child: Text(
                                  'Book a tour',
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 20
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 30,
              left: 15,
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                  ),
                ),
              ),
          )
        ],
      ),
    );
  }
}
