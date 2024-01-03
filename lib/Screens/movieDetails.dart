import 'package:flutter/material.dart';


import '/Screens/downloads.dart';
import '/Screens/videoPlayer.dart';
import '../Data/movieDetails.dart';
import '../styles.dart';
import 'bottomNavigation.dart';

class MovieDetails extends StatefulWidget {
  final MovieDetailsModel movieDescription;
  const MovieDetails({super.key,required this.movieDescription});

  @override
  State<MovieDetails> createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage((widget.movieDescription.coverImage).toString()),
                          fit: BoxFit.fill
                      )
                  ),
                ),
                Positioned(
                  top: 40,
                    left: 10,
                    child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.grey,size: 30,)),
                
              ],
            ),




            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) =>VideoPlayerScreen(videoUrl: (widget.movieDescription.video).toString(),)));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.play_arrow_rounded),
                              Text("Play Movie"),
                            ],
                          )
                      ),
                      ElevatedButton(
                          onPressed: (){
                            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => BottomNavigation(currentIndex: 2)),(route)=> false);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.download_sharp),
                              Text("Download"),
                            ],
                          )
                      )
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:25.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.06,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.local_play,color: Colors.grey,),
                              Text("Trailer",style: defaultTextColor,)
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.playlist_add,color: Colors.grey,),
                              Text("WatchList",style: defaultTextColor,)
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.more_vert_outlined,color: Colors.grey,),
                              Text("More",style: defaultTextColor,)
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text((widget.movieDescription.story).toString(),style: defaultTextColor,),
                  ),


                  Row(
                    children: [
                      Text("iBDb rating ",style: defaultTextColor,),
                      Text((widget.movieDescription.iMDbRating).toString(),style: defaultTextColor,),
                    ],
                  ),

                  Row(
                    children: [
                      Text((widget.movieDescription.duration).toString(),style: defaultTextColor,),
                    ],
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




