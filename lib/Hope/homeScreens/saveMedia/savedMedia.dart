import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class GlobalSaveNotifier extends ChangeNotifier {
  final List<String> _savedPosts = [];

  List<String> get savedPosts => List.unmodifiable(_savedPosts);

  void toggleSave(String postLink) {
    if (_savedPosts.contains(postLink)) {
      _savedPosts.remove(postLink);
    } else {
      _savedPosts.add(postLink);
    }
    notifyListeners();
  }

  bool isSaved(String postLink) {
    return _savedPosts.contains(postLink);
  }
}

class SavedButton extends StatelessWidget {
  final String postLink;

  const SavedButton({required this.postLink, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final savedNotifier = Provider.of<GlobalSaveNotifier>(context);

    return IconButton(
      icon: Icon(
        savedNotifier.isSaved(postLink)
            ? Icons.bookmark
            : Icons.bookmark_border,
        color: savedNotifier.isSaved(postLink) ? Colors.black : null,
      ),
      onPressed: () {
        savedNotifier.toggleSave(postLink);
      },
    );
  }
}
