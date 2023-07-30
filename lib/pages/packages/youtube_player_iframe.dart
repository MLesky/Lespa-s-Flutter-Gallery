import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YouTubePlayerIframeExample extends StatefulWidget {
  const YouTubePlayerIframeExample({super.key});

  @override
  State<YouTubePlayerIframeExample> createState() =>
      _YouTubePlayerIframeExampleState();
}

class _YouTubePlayerIframeExampleState
    extends State<YouTubePlayerIframeExample> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController.fromVideoId(
      params: const YoutubePlayerParams(
        mute: false,
        showControls: true,
        showFullscreenButton: true,
      ),
      videoId: 'Hdo_gvYxI9g',
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerScaffold(
        controller: _controller,
        aspectRatio: 16 / 9,
        builder: (context, player) => Column(
              children: [
                player,
                const Text('Youtube Player'),
              ],
            ));
  }
}
