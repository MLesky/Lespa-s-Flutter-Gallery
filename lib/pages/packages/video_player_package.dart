import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerExample extends StatefulWidget {
  const VideoPlayerExample({super.key});

  @override
  State<VideoPlayerExample> createState() => _VideoPlayerExampleState();
}

class _VideoPlayerExampleState extends State<VideoPlayerExample> {
  late VideoPlayerController _assetController;

  @override
  void initState() {
    super.initState();
    _assetController =
        VideoPlayerController.asset('assets/videos/bouncing_ball.mp4');
    _assetController.addListener(() {
      setState(() {});
    });
    _assetController.initialize().then((_) => setState((){}));
  }

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          children: [
            const Text("Asset Video"),
            AspectRatio(
              aspectRatio: 3 / 2,
              child: VideoPlayer(_assetController),
            ),

            IconButton(icon: const Icon(Icons.play_arrow), onPressed: () { _assetController.play(); },)
          ],
        ),
      );
}
