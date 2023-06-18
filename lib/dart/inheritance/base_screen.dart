abstract class BaseScreen {
  final String screenName;

  BaseScreen(this.screenName);

  void printData();

  void printScreenName() {
    print(screenName);
  }

  void startLoading() {
    print('startLoading');
  }

  void stopLoading() {
    print('stopLoading');
  }
}
