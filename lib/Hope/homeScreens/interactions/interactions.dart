import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteNotifier extends ChangeNotifier {
  bool _isFavorited = false;
  int _counter = 0;

  bool get isFavorited => _isFavorited;
  int get counter => _counter;

  void toggleFavorite() {
    _isFavorited = !_isFavorited;
    if (_isFavorited) {
      _counter++;
    } else {
      _counter--;
    }
    notifyListeners(); // Notify listeners about the state change
  }
}

class FavoriteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favoriteNotifier = Provider.of<FavoriteNotifier>(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(
            favoriteNotifier.isFavorited
                ? Icons.favorite
                : Icons.favorite_border_outlined,
            color: favoriteNotifier.isFavorited ? Colors.red : null,
          ),
          onPressed: favoriteNotifier.toggleFavorite, // Call notifier's method
        ),
        Text("${favoriteNotifier.counter} Likes"),
      ],
    );
  }
}
