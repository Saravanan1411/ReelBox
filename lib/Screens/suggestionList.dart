import 'package:flutter/material.dart';

import '../Data/movieDetails.dart';
import '/styles.dart';

class SuggestionList extends StatefulWidget {
  const SuggestionList({super.key});

  @override
  State<SuggestionList> createState() => _MovieListState();
}

class _MovieListState extends State<SuggestionList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return [
            SliverAppBar(
              leading: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.grey,size: 30,),
              backgroundColor: Colors.transparent,
              title: Text("Suggestion",style: pageHeaders,),

            ),
          ];

        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.9,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10
                  ),
                  itemCount:movieList.length ,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(movieList[index].coverImage),
                              fit:BoxFit.fill
                          )
                      ),
                    );
                  },
                ),
              )
          ],
            ),
      ),
      ),
    );
  }
}
