import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MoviePage extends StatelessWidget {
   const MoviePage({super.key, required this.image, });

 final String image;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/$image.jpg"),
                    opacity: 0.8,
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 10),
                child: InkWell(
                  onTap:() => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 28,
                    ),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  image,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold 
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                  "PG - 13",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500, 
                    ),
                  ),
                  SizedBox(width: 30),
                  Text(
                  "Action",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500, 
                    ),
                 ),
                 SizedBox(width: 30),
                 Text(
                  "2.5 hrs",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500, 
                    ),
                )
                  ],
                ),
                SizedBox(height: 10),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  allowHalfRating: true,
                  direction: Axis.horizontal,
                  itemCount: 5,
                  itemSize: 25,
                  unratedColor: Colors.white,
                  itemBuilder: (context, index) => Icon(Icons.star, color: Colors.amber),
                  onRatingUpdate: (rating) {},
                ),
                SizedBox(height: 20),
                Text("Thor: Love and Thunder is a 2022 American superhero film based on Marvel Comics featuring the character Thor. it is the sequel to Thor: Ragnarok (2017) and the 29th film in the Marvel Cinematic Universe (MCU). The film was directed by Taika Waititi, who co-wrote the screenplay with Jennifer Kaytin Robinson, Russell Crowe, and Natalie Portman.",
                   style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Colors.white,
                    fontSize: 16,
                    ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Material(
           borderRadius: BorderRadius.circular(10),
           color: Colors.red,
           child: InkWell(
             onTap: () {},
             child: Container(
               padding: EdgeInsets.all(8),
               child: Row(
                 children: [
                   Icon(Icons.favorite, color: Colors.white, size: 30,),
                   SizedBox(width: 10),
                   Text(
                     "Add to Wishlist",
                     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                     ),
                 ],
               ),
             ),
           ),  
         ),
          FloatingActionButton(
           backgroundColor: Colors.red,
           onPressed: () {},
           child: Icon(Icons.play_arrow_rounded, size: 50,),
           ),
       ],
      ),
    );
  }
}