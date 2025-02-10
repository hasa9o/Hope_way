import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<XFile>? _mediaFiles;
  VideoPlayerController? _videoController;
  final ImagePicker _picker = ImagePicker();
  bool isVideo = false;

  Future<void> _pickMedia(ImageSource source,
      {bool isVideoSelection = false}) async {
    final XFile? file = isVideoSelection
        ? await _picker.pickVideo(source: source)
        : await _picker.pickImage(source: source);

    if (file == null) return;

    setState(() {
      isVideo = isVideoSelection;
      _mediaFiles = [file];
    });

    if (isVideo) {
      _playVideo(file);
    }
  }

  Future<void> _playVideo(XFile file) async {
    _videoController?.dispose();
    _videoController = VideoPlayerController.file(File(file.path))
      ..initialize().then((_) {
        _videoController!.setLooping(true);
        _videoController!.play();
        setState(() {});
      });
  }

  Widget _previewMedia() {
    if (_mediaFiles == null)
      return Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network(
              fit: BoxFit.fitHeight,
              "https://i.pinimg.com/736x/87/20/a2/8720a22734b1539226e31897bb51b802.jpg"),
        ),
      );

    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: isVideo && _videoController != null
            ? AspectRatio(
                aspectRatio: _videoController!.value.aspectRatio,
                child: VideoPlayer(_videoController!),
              )
            : SizedBox(
                height: 180,
                width: 180,
                child: Image.file(
                    fit: BoxFit.cover, File(_mediaFiles!.first.path))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        _previewMedia(),
        Positioned(
          right: 20,
          top: 1,
          child: RawMaterialButton(
            constraints: BoxConstraints(
                maxWidth: 100, maxHeight: 100, minHeight: 35, minWidth: 35),
            fillColor: Color(0xff27503f),
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: () => _pickMedia(ImageSource.gallery),
            child: const Icon(
              color: Colors.white,
              Icons.edit,
              size: 25,
            ),
          ),
        ),
      ]),
    );
  }
}
