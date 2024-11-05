import 'story.dart';

class StoryBrain {
  int _storyIndex = 0;

  final List<Story> _storyData = [
    Story(
      storyTitle: 'Your car has blown a tire on a winding road...',
      choice1: 'I\'ll hop in. Thanks for the help!',
      choice2: 'Better ask if he\'s a murderer first.',
    ),
    // Thêm các câu chuyện khác tại đây...
    Story(
      storyTitle: 'He\'s wearing a black coat. You can\'t see his face.',
      choice1: 'I\'ll ask him to call my mom.',
      choice2: 'I\'ll run away.',
    ),
    Story(
      storyTitle: 'You called the police. They arrest him.',
      choice1: 'The end.',
      choice2: 'The end.',
    ),
  ];

  String getStoryTitle() {
    return _storyData[_storyIndex].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyIndex].choice1;
  }

  String getChoice2() {
    return _storyData[_storyIndex].choice2;
  }

  void nextStory(int choiceNumber) {
    if (_storyIndex == 0) {
      _storyIndex =
          choiceNumber == 1 ? 1 : 2; // Chọn câu chuyện dựa trên sự lựa chọn
    } else {
      _storyIndex = 2; // Chuyển đến câu chuyện kết thúc
    }
  }

  bool isEndOfStory() {
    return _storyIndex >= _storyData.length - 1;
  }

  void restart() {
    _storyIndex = 0;
  }
}
