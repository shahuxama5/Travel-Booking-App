import 'package:flutter/material.dart';

import 'home.dart';


class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'Assets/Images/wl.jpg',
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(1),
                      Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.7),
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(0.4),
                      Colors.black.withOpacity(0.3),
                      Colors.black.withOpacity(0.2),
                      Colors.black.withOpacity(0.1),
                      Colors.black.withOpacity(0.05),
                      Colors.black.withOpacity(0.025),
                    ]
                )
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Enjoy every moment",
                textScaleFactor: 1,
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.blue[300],
                    fontWeight: FontWeight.w600
                  ),
              ),
              SizedBox(height: 10,),
              Text(
                "The Pakistan tour 2K21",
                textScaleFactor: 1,
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "We will help you find the best \n experiences and adventures",
                textScaleFactor: 1,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.w400
                ),
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> Home()));
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50,)
            ],
          )
        ],
      ),
    );
  }
}
