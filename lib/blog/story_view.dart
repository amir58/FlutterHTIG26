import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryViewScreen extends StatefulWidget {
  const StoryViewScreen({Key? key}) : super(key: key);

  @override
  State<StoryViewScreen> createState() => _StoryViewScreenState();
}

class _StoryViewScreenState extends State<StoryViewScreen> {


  final controller = StoryController();

  @override
  Widget build(context) {
    List<StoryItem> storyItems = [
      StoryItem.text(title: "Welcome in Flutter course", backgroundColor: Colors.black),
      StoryItem.pageImage(url: "https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg", controller: controller),
    ]; // your list of stories

    return StoryView(
        storyItems : storyItems,
        controller: controller,
        // pass controller here too
        repeat: true,
        // should the stories be slid forever

        onComplete: () {},
        onVerticalSwipeComplete: (direction) {
          if (direction == Direction.down) {
            Navigator.pop(context);
          }
        } // To disable vertical swipe gestures, ignore this parameter.
      // Preferrably for inline story view.
    );
  }

}
