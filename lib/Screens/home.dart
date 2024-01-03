import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../Data/genreList.dart';
import '/Screens/movieDetails.dart';
import '/Screens/suggestionList.dart';

import '../Data/movieDetails.dart';
import '../styles.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _pagePosition= 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      body: SingleChildScrollView(
        child: Column(

          children: [

            //top carousel
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 450.0,
                aspectRatio: 16/9,
                viewportFraction: 1, // size of display to show the container with other containers
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                autoPlayAnimationDuration: Duration(milliseconds: 400),
                scrollDirection: Axis.horizontal,
                  onPageChanged: (index,reason){
                    setState(() {
                      _pagePosition= index;
                    });
                  }
              ),

              itemCount: movieList.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return  Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 1.0),
                      foregroundDecoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent,Colors.black]
                        )
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image:NetworkImage(movieList[index].coverImage),
                          fit: BoxFit.fill
                        )
                      ),
                    ),
                    Positioned(
                      bottom:10,
                      left: MediaQuery.of(context).size.width * 0.3,

                      child: Column(
                        children: [
                          Text(movieList[index].movieName,style: carouselHeader,),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey.withOpacity(0.3),
                              ),
                              onPressed: (){},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.play_arrow_rounded,color: Colors.grey,),
                                  Text("Watch Now", style: watchButtonText)
                                ],
                              )
                          ),
                        ],
                      ),
                    )
                  ]
                );

              },


            ),
            DotsIndicator(
              dotsCount:movieList.length ,
              position: _pagePosition,

            ),

            //suggestion list
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Suggestions",style: sideHeaders,),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SuggestionList()));
                    }, child: Text("See All"))
                  ],
                ),
                
                SizedBox(
                  height:200 ,
                  child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context , index){
                        return GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MovieDetails(movieDescription: movieList[index],)));
                          },
                          child: Container(
                            height: 100,
                            width: 150,
                            margin: EdgeInsets.all(5),
                            decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white.withOpacity(0.2),
                                    blurRadius: 1,
                                    spreadRadius:1,

                                  )
                                ],
                                image: DecorationImage(
                                    image:NetworkImage(movieList[index].coverImage),
                                    fit: BoxFit.cover
                                )
                            ) ,

                          ),
                        );
                      }
                  ),
                ),
              ],
            ),


            //Popular Genres

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular Genres",style: sideHeaders,),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SuggestionList()));
                      },
                        child: Text("See All")
                    )
                  ],
                ),

                SizedBox(
                  height:100 ,
                  child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context , index){
                        return GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MovieDetails(movieDescription: movieList[index],)));
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 100,
                                width: 150,
                                margin: EdgeInsets.all(5),
                                foregroundDecoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                        colors: [Colors.black,Colors.black12]
                                    )
                                ),
                                decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white.withOpacity(0.2),
                                        blurRadius: 1,
                                        spreadRadius:1,
                                      )
                                    ],

                                    image: DecorationImage(
                                        image:NetworkImage(genreList[index].coverImage),
                                        fit: BoxFit.cover
                                    )
                                ) ,


                              ),
                              Positioned(
                                bottom: 10,
                                  left:15,
                                  child: Text(genreList[index].genreName,style: sideHeaders)
                              ),
                            ]
                          ),
                        );
                      }
                  ),
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
