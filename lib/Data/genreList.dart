class GenreList {
  String? coverImage;
  String? genreName;



  GenreList( this.genreName,this.coverImage);

}

List genreList = genreDetails.map((e) => GenreList(e["genreName"],e["coverImage"])).toList();


var genreDetails = [
  {
    "genreName":"Drama",
    "coverImage":"https://mellowplex.s3.amazonaws.com/uploads/item/cover/13398/aambala-tamil-movie-vishal-hansika-cover.jpg",
  },
  {
    "genreName":"Romance",
    "coverImage":"https://www.filmibeat.com/img/1200x80x675/popcorn/movie_lists/15-most-romantic-tamil-movies-to-watch-on-valentines-day-20170214102906-4019.jpg",
  },
  {
    "genreName":"Family",
    "coverImage":"https://images.ottplay.com/images/19de13697b0f3f727c945b143a1054b4.jpg",
  },
  {
    "genreName":"Kids",
    "coverImage":"https://rukminim2.flixcart.com/image/850/1000/l02r1jk0/poster/x/w/q/medium-tom-jerry-poster-cartoon-a3-wall-poster-pack-of-1-original-imagbxcgbak4jytb.jpeg?q=20",
  },
  {
    "genreName":"Reality",
    "coverImage":"https://static.toiimg.com/photo/101632279.cms",
  },
  {
    "genreName":"Comedy",
    "coverImage":"https://ik.imagekit.io/j83rchiauw/seo_popular_master/202307151343_uaN0htsYHOCURsfp.jpg",
  },
  {
    "genreName":"Crime",
    "coverImage":"https://images.ottplay.com/images/vadhandhi-892.jpg?impolicy=ottplay-20210210&width=1200&height=675",
  },
  {
    "genreName":"Horror",
    "coverImage":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqFKzN73CcII0cLbkIYEZ2BFs5U5tQNC-V5Q&usqp=CAU",
  },
  {
    "genreName":"Thriller",
    "coverImage":"https://static.toiimg.com/photo/msid-82400177/82400177.jpg",
  },
  {
    "genreName":"Anime",
    "coverImage":"https://e1.pxfuel.com/desktop-wallpaper/479/899/desktop-wallpaper-s-anime-girl-anime-cover-thumbnail.jpg",
  },
  {
    "genreName":"Action",
    "coverImage":"https://igimages.gumlet.io/telugu/home/jigarthanda12122022_c.jpg"
  }


];