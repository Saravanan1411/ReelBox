import 'package:flutter/material.dart';


import '/styles.dart';
import '../Data/movieDetails.dart';
import 'movieDetails.dart';


class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60,),
            Text("Search",style: headers,),
            SizedBox(height: 10,),
            TextFormField(
              style: defaultTextColor,
              decoration: InputDecoration(
                hintText: "Search...",
                hintStyle: defaultTextColor,
                prefixIcon: Icon(Icons.search_outlined,color: Colors.grey,),
                border: OutlineInputBorder()
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height*0.73,
                width: MediaQuery.of(context).size.width*1,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8
                  ),
                  itemCount:movieList.length ,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MovieDetails(movieDescription: movieList[index],)));
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(movieList[index].coverImage),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
