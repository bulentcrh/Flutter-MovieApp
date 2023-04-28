import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/Pages/movie_page.dart';

class MovieSections extends StatelessWidget {
   MovieSections({super.key});

  List imageList = [
    "Thor Love And Thunder",
    "Avatar 2",
    "Black Panther 2",
    "Black Adam",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider( 
          options: CarouselOptions(
            height: 500,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            enableInfiniteScroll: true,
            aspectRatio: 16 / 9,
            viewportFraction: 0.65,
          ),
        items: [
          for(int i = 0; i< imageList.length; i++)
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MoviePage(image: imageList[i],),));
            }, 
            child: Container(
              margin: EdgeInsets.all(8),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("assets/images/${imageList[i]}.jpg",
                    height: 300,
                    width: 300,
                    fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "PG_13",
                           style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500 ),),
                        Text(
                          "Action",
                           style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500 ),
                           ),
                           Row(
                            children: [
                              Icon(Icons.star, color: Colors.amber,),
                              SizedBox(width: 5,),
                              Text(
                                "4.8",
                                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500 ),
                                ),
                            ],
                           ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    imageList[i],
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),

                  ),
                ],
              ),
            ),
          )
        ],
        ),
      ],
    );
  }
}