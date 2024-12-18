import 'package:flutter/material.dart';
import 'package:hope_way_app/Hope/homeScreens/saveMedia/savedMedia.dart';
import 'package:provider/provider.dart';

class SavedPostsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final saveNotifier = Provider.of<GlobalSaveNotifier>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff225036),
        title: const Text("Saved Posts"),
      ),
      body: saveNotifier.savedPosts.isEmpty
          ? const Center(child: Text("No saved posts"))
          : ListView.builder(
              itemCount: saveNotifier.savedPosts.length,
              itemBuilder: (context, index) {
                final postLink = saveNotifier.savedPosts[index];
                return Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Image.network(
                        postLink,
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.5,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      "Post $index",
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                );
              },
            ),
    );
  }
}
