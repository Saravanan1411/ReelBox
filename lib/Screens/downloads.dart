import 'package:flutter/material.dart';


import '/Data/movieDetails.dart';

import '../styles.dart';
import 'bottomNavigation.dart';




class Downloads extends StatefulWidget {
  const Downloads({super.key});

  @override
  State<Downloads> createState() => _SearchState();
}

class _SearchState extends State<Downloads> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60,),
              Text("Downloads",style: headers,),

              SizedBox(
                height:MediaQuery.of(context).size.height*0.9 ,
                child: ListView.builder(
                    itemCount: movieList.length,
                    // scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context , index){
                      return GestureDetector(
                        onTap: (){},
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height*0.07,
                                  width: MediaQuery.of(context).size.width*0.3,
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
                                          fit: BoxFit.fill
                                      )
                                  ) ,

                                ),
                                Positioned(
                                    top: MediaQuery.of(context).size.height*0.021,
                                    left: MediaQuery.of(context).size.width*0.12,
                                    child: Icon(Icons.download_for_offline,color: Colors.grey.withOpacity(0.8),size: 30,)
                                ),
                                
                              ],
                            ),
                            Container(
                              width:MediaQuery.of(context).size.width*0.5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(movieList[index].movieName,style: sideHeaders,),
                                  Text(movieList[index].duration,style: defaultTextColor,)
                                ],
                              ),
                            ),
                            Icon(Icons.more_vert_outlined,size:30,color: Colors.grey,)
                            
                          ],
                        ),
                      );
                    }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
