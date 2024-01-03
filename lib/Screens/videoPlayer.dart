// import 'package:appinio_video_player/appinio_video_player.dart';
// import 'package:flutter/material.dart';
//
// import 'package:video_player/video_player.dart';
//
//
// class VideoPlayer extends StatefulWidget {
//   const VideoPlayer({super.key});
//
//
//   @override
//   State<VideoPlayer> createState() => _VideoPlayerState();
// }
//
// class _VideoPlayerState extends State<VideoPlayer> {
//
//   late VideoPlayerController videoPlayerController;
//   late CustomVideoPlayerController _customVideoPlayerController;
//
//
//
//   @override
//   void initState() {
//     super.initState();
//     videoPlayerController = VideoPlayerController.asset("assets/masterTrailer.mp4")
//       ..initialize().then((value) => setState(() {}));
//     _customVideoPlayerController = CustomVideoPlayerController(
//       context: context,
//       videoPlayerController: videoPlayerController,
//     );
//   }
//
//   @override
//   void dispose() {
//     _customVideoPlayerController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: CustomVideoPlayer(
//             customVideoPlayerController: _customVideoPlayerController
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:flick_video_player/flick_video_player.dart';
// import 'package:video_player/video_player.dart';
//
// class SamplePlayer extends StatefulWidget {
//  // SamplePlayer({required Key key}) : super(key: key);
//
//   @override
//   _SamplePlayerState createState() => _SamplePlayerState();
// }
//
// class _SamplePlayerState extends State<SamplePlayer> {
//   late FlickManager flickManager;
//   @override
//   void initState() {
//     super.initState();
//     flickManager = FlickManager(
//       videoPlayerController:
//       VideoPlayerController.asset("assets/masterTrailer.mp4"),
//     );
//   }
//
//   @override
//   void dispose() {
//     flickManager.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           height: 200,
//           child: FlickVideoPlayer(
//               flickManager: flickManager
//           ),
//         ),
//       ],
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';


class VideoPlayerScreen extends StatefulWidget {
  final String videoUrl;

  const VideoPlayerScreen({super.key,required this.videoUrl});

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}


class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network((widget.videoUrl).toString());
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: 16 / 9, // You can change this to match your video aspect ratio
      autoPlay: true,
      looping: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top:30.0,bottom: 10.0),
        child: Center(
          child: Chewie(
            controller: _chewieController,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }
}
