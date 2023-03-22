import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_flutter_gallery/pages/packages/video_player_package.dart';

class ImagePickerExample extends StatefulWidget {
  const ImagePickerExample({super.key});

  @override
  State<ImagePickerExample> createState() => _ImagePickerExampleState();
}

class _ImagePickerExampleState extends State<ImagePickerExample> {
  final ImagePicker _picker = ImagePicker();
  XFile? image;
  XFile? video;
  late List<XFile>? images;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          image == null
              ? const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 70,
                  child: Icon(
                    Icons.person,
                    size: 100,
                    color: Colors.white,
                  ))
              : CircleAvatar(
                  radius: 70, backgroundImage: FileImage(File('${image?.path}'))),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () => pickImageFromCamera(),
                child: Column(
                  children: const [
                    Icon(
                      Icons.camera_alt_rounded,
                      color: Colors.indigo,
                      size: 70,
                    ),
                    Text('Camera'),
                  ],
                ),
              ),
              TextButton(
                onPressed: () => pickImageFromGallery(),
                child: Column(
                  children: const [
                    Icon(
                      Icons.image,
                      color: Colors.indigo,
                      size: 70,
                    ),
                    Text('Gallery'),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          video == null ?
          AspectRatio(aspectRatio: 3/2, child: Container(color: Colors.grey.shade800,),) :
              VideoPlayerExample(link: '${video?.path}', fromFile: true,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () => pickVideoFromCamera(),
                child: Column(
                  children: const [
                    Icon(
                      Icons.video_call,
                      color: Colors.indigo,
                      size: 70,
                    ),
                    Text('Capture'),
                  ],
                ),
              ),
              TextButton(
                onPressed: () => pickVideoFromGallery(),
                child: Column(
                  children: const [
                    Icon(
                      Icons.video_collection,
                      color: Colors.indigo,
                      size: 70,
                    ),
                    Text('Device'),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ],
    );
  }

  void pickImageFromCamera() async {
    final imagePicker = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      image = imagePicker;
    });
  }

  void pickImageFromGallery() async {
    final imagePicker = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      image = imagePicker;
    });
  }

  void pickVideoFromCamera() async {
    XFile? tempVid = video;
    setState(() {
      video = null;
    });
    final videoPicker = await _picker.pickVideo(source: ImageSource.camera);
    setState(() {
      video = videoPicker ?? tempVid;
    });
  }

  void pickVideoFromGallery() async {
    XFile? tempVid = video;
    setState(() {
      video = null;
    });
    final videoPicker = await _picker.pickVideo(source: ImageSource.gallery);
    setState(() {
      video = videoPicker ?? tempVid;
    });
  }

  void pickManyImages() async {
    final imagePicker = await _picker.pickMultiImage();
    setState(() {
      images = imagePicker;
    });
  }
}
