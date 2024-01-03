class MovieDetailsModel {
  String? movieName;
  String? coverImage;
  String? duration;
  String? iMDbRating;
  String? video;
  String? story;


  MovieDetailsModel(this.movieName, this.coverImage, this.duration, this.iMDbRating,this.story,this.video);

}

List movieList = movieDetails.map((e) => MovieDetailsModel(e["movieName"], e["coverImage"],e["duration"],e["iMDbRating"],e["story"],e["video"])).toList();


var movieDetails = [
  {

    "movieName":"Master",
    "coverImage":"https://pbs.twimg.com/media/ENH_PGfU0AMIwYI.jpg:large",
    "duration":"2 hrs 34 min",
    "iMDbRating":"7.5/10",
    "video":"https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
    "story":"Master is an action film from India about a professor, JD, who is sent to teach at a juvenile reform school for three months. He clashes with an unscrupulous man, Bhavani, who controls the school's young inmates to cover up his own criminal activities."
  },
  {
    "movieName":"Leo",
    "coverImage":"https://igimages.gumlet.io/tamil/home/leo_single_160623_2.jpeg?w=376&dpr=2.6",
    "duration":"2 hrs 34 min",
    "iMDbRating":"7.5/10",
    "video":"https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
    "story":"The film follows Parthi, a café owner and animal rescuer in Theog, who is pursued by gangsters Antony and Harold Das who suspect him to be Antony's estranged son, Leo"
  },
  {
    "movieName":"Thunivu",
    "coverImage":"https://m.media-amazon.com/images/M/MV5BMGU3ODQxMGEtZjlhNy00ZTMxLThkNDktNmY0YjA3ZTY1NjJkXkEyXkFqcGdeQXVyMTQ3MjQ2NzA0._V1_.jpg",
    "duration":"2 hrs 34 min",
    "iMDbRating":"7.5/10",
    "video":"https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
    "story":"Radha, a dreaded gangster, and his men plan a heist at Your Bank, one of the biggest privately-owned banks in Chennai, with the support of ACP Ramachandran. They plan to rob ₹500 crores on 21 May, coinciding with the Governor's party event at his residence."
  },
  {
    "movieName":"Jigarthanda",
    "coverImage":"https://m.media-amazon.com/images/S/pv-target-images/d38e64b916e36f41bb71f05b149dbedcf0c1950b7a5477dfc57c3bdc42f8784c.jpg",
    "duration":"2 hrs 34 min",
    "iMDbRating":"7.5/10",
    "video":"https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
    "story":"An aspiring director targets a ruthless gangster because he wants to make a violent gangster film. His discreet attempts to research the gangster fail miserably. Finally when he gets caught snooping, things hit the fan."
  },
  {
    "movieName":"Ghilli",
    "coverImage":"https://m.media-amazon.com/images/S/pv-target-images/6e61c2db2e28ac4a96e7dbdf2e1367640a515c5f532450abe45fecd236e5433b.jpg",
    "duration":"2 hrs 34 min",
    "iMDbRating":"7.5/10",
    "video":"https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
    "story":"Velu, an aspiring kabaddi player, goes to Madurai to participate in a regional match, where he rescues Dhanalakshmi from Muthupandi, a powerful man keen on marrying the girl against her will."
  },
  {
    "movieName":"Mark Antony",
    "coverImage":"https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/mark-antony-et00367366-1692281157.jpg",
    "duration":"2 hrs 34 min",
    "iMDbRating":"7.5/10",
    "video":"https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
    "story":"A scientist named Chiranjeevi invents a telephone that enables its users to make calls to the past timeline once a day and alter history. Meanwhile, Antony and Jackie Pandian are best friends and gangsters in Chennai, who have a common enemy named Ekambaram, who is also a gangster."
  },
  {
    "movieName":"Master",
    "coverImage":"https://pbs.twimg.com/media/ENH_PGfU0AMIwYI.jpg:large",
    "duration":"2 hrs 34 min",
    "iMDbRating":"7.5/10",
    "video":"https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
    "story":"Master is an action film from India about a professor, JD, who is sent to teach at a juvenile reform school for three months. He clashes with an unscrupulous man, Bhavani, who controls the school's young inmates to cover up his own criminal activities."
  },
  {
    "movieName":"Leo",
    "coverImage":"https://igimages.gumlet.io/tamil/home/leo_single_160623_2.jpeg?w=376&dpr=2.6",
    "duration":"2 hrs 34 min",
    "iMDbRating":"7.5/10",
    "video":"https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
    "story":"The film follows Parthi, a café owner and animal rescuer in Theog, who is pursued by gangsters Antony and Harold Das who suspect him to be Antony's estranged son, Leo"
  },
  {
    "movieName":"Thunivu",
    "coverImage":"https://m.media-amazon.com/images/M/MV5BMGU3ODQxMGEtZjlhNy00ZTMxLThkNDktNmY0YjA3ZTY1NjJkXkEyXkFqcGdeQXVyMTQ3MjQ2NzA0._V1_.jpg",
    "duration":"2 hrs 34 min",
    "iMDbRating":"7.5/10",
    "video":"https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
    "story":"Radha, a dreaded gangster, and his men plan a heist at Your Bank, one of the biggest privately-owned banks in Chennai, with the support of ACP Ramachandran. They plan to rob ₹500 crores on 21 May, coinciding with the Governor's party event at his residence."

  },
  {
    "movieName":"Jigarthanda",
    "coverImage":"https://m.media-amazon.com/images/S/pv-target-images/d38e64b916e36f41bb71f05b149dbedcf0c1950b7a5477dfc57c3bdc42f8784c.jpg",
    "duration":"2 hrs 34 min",
    "iMDbRating":"7.5/10",
    "video":"https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
    "story":"An aspiring director targets a ruthless gangster because he wants to make a violent gangster film. His discreet attempts to research the gangster fail miserably. Finally when he gets caught snooping, things hit the fan."
  },
  {
    "movieName":"Ghilli",
    "coverImage":"https://m.media-amazon.com/images/S/pv-target-images/6e61c2db2e28ac4a96e7dbdf2e1367640a515c5f532450abe45fecd236e5433b.jpg",
    "duration":"2 hrs 34 min",
    "iMDbRating":"7.5/10",
    "video":"https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
    "story":"Velu, an aspiring kabaddi player, goes to Madurai to participate in a regional match, where he rescues Dhanalakshmi from Muthupandi, a powerful man keen on marrying the girl against her will."
  },
  {
    "movieName":"Mark Antony",
    "coverImage":"https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/mark-antony-et00367366-1692281157.jpg",
    "duration":"2 hrs 34 min",
    "iMDbRating":"7.5/10",
    "video":"https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
    "story":"A scientist named Chiranjeevi invents a telephone that enables its users to make calls to the past timeline once a day and alter history. Meanwhile, Antony and Jackie Pandian are best friends and gangsters in Chennai, who have a common enemy named Ekambaram, who is also a gangster."
  }

];