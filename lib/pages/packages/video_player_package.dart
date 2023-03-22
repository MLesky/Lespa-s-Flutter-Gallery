import 'dart:io';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerExample extends StatefulWidget {
  final String link;
  final bool fromFile;
  const VideoPlayerExample({super.key, required this.link, this.fromFile = false});

  @override
  State<VideoPlayerExample> createState() => _VideoPlayerExampleState();
}

class _VideoPlayerExampleState extends State<VideoPlayerExample> {
  late VideoPlayerController _assetController, _networkController;

  @override
  void initState() {
    super.initState();
    !widget.fromFile ?
    _assetController =
        VideoPlayerController.asset(widget.link) : _assetController =
        VideoPlayerController.file(File(widget.link));
    ;
    _assetController.addListener(() {
      setState(() {});
    });
    _assetController.initialize().then((_) => setState(() {}));
    _assetController.play();
    _assetController.setLooping(true);

    _networkController = VideoPlayerController.network(
        'https://github.com/MLesky/Lespa-s-Flutter-Gallery/blob/main/assets/videos/bouncing_ball.mp4');
    _networkController.addListener(() {
      setState(() {});
    });
    _networkController.initialize().then((_) => setState(() {}));
    _networkController.play();
  }

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Asset Video",
              textScaleFactor: 1.3,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            AspectRatio(
              aspectRatio: _assetController.value.aspectRatio,
              child: Stack(alignment: Alignment.bottomCenter, children: [
                VideoPlayer(_assetController),
                _ControlsOverlay(controller: _assetController),
              ]),
            ),
          ],
        ),
      );
  @override
  void dispose() {
    super.dispose();
    _assetController.dispose();
    _networkController.dispose();
  }
}

class _ControlsOverlay extends StatelessWidget {
  const _ControlsOverlay({required this.controller});
  final VideoPlayerController controller;

  static const List<double> _examplePlaybackRates = [
    0.25,
    0.5,
    1.0,
    1.5,
    2.0,
    4.0,
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 50),
          reverseDuration: const Duration(milliseconds: 200),
          child: controller.value.isPlaying
              ? const SizedBox.shrink()
              : Container(
                  color: Colors.black26,
                  child: const Center(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 100,
                      semanticLabel: 'Play',
                    ),
                  ),
                ),
        ),
        GestureDetector(
          onTap: () {
            controller.value.isPlaying ? controller.pause() : controller.play();
          },
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Text(
                      '${(controller.value.position.inMinutes).toString().padLeft(2, '0')}:'
                      '${controller.value.position.inSeconds.toString().padLeft(2, '0')}',
                      style: const TextStyle(color: Colors.white)),
                  Expanded(
                      child: VideoProgressIndicator(
                    controller,
                    allowScrubbing: true,
                    padding: const EdgeInsets.all(5),
                    colors: const VideoProgressColors(
                        playedColor: Colors.indigo,
                        bufferedColor: Colors.white10,
                        backgroundColor: Colors.white),
                  )),
                  Text(
                      '${(controller.value.duration.inMinutes).toString().padLeft(2, '0')}:'
                      '${controller.value.duration.inSeconds.toString().padLeft(2, '0')}',
                      style: const TextStyle(color: Colors.white)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PopupMenuButton(
                    onSelected: (volume) {
                      controller.setVolume(volume);
                    },
                    itemBuilder: (BuildContext context) {
                      return <PopupMenuItem>[
                        PopupMenuItem(
                          child: SfSlider.vertical(
                            min: 0,
                            max: 100,
                            stepSize: 5,
                            interval: 10,
                            showTicks: true,
                            enableTooltip: true,
                            value: controller.value.volume * 100,
                            onChanged: (volume) {
                              controller.setVolume(volume/100);
                            },
                          ),
                        ),
                      ];
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.volume_down_sharp,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text((controller.value.volume * 100).toStringAsFixed(0),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 15)),
                      ],
                    ),
                  ),
                  PopupMenuButton<double>(
                    initialValue: controller.value.playbackSpeed,
                    tooltip: 'Playback speed',
                    onSelected: (double speed) {
                      controller.setPlaybackSpeed(speed);
                    },
                    itemBuilder: (BuildContext context) {
                      return <PopupMenuItem<double>>[
                        for (final double speed in _examplePlaybackRates)
                          PopupMenuItem<double>(
                            value: speed,
                            child: Text(
                              '${speed}x',
                            ),
                          )
                      ];
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.speed_outlined,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text('${controller.value.playbackSpeed}x',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 15)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
