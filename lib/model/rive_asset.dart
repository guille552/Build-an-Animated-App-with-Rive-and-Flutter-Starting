import 'package:rive/rive.dart';

class RiveAsset {
  final String artboard, stateachineName, title, src;
  late SMIBool? input;

  RiveAsset(this.src,
      {required this.artboard,
      required this.stateachineName,
      required this.title,
      this.input});

  set setInput(SMIBool status) {
    input = status;
  }
}

List<RiveAsset> bottomNavs = [
  RiveAsset("assets/RiveAssets/icons.riv",
      artboard: "CHAT", stateachineName: "CHAT_Interactivity", title: "Chat"),
  RiveAsset("assets/RiveAssets/icons.riv",
      artboard: "SEARCH",
      stateachineName: "SEARCH_Interactivity",
      title: "Search"),
  RiveAsset("assets/RiveAssets/icons.riv",
      artboard: "TIMER",
      stateachineName: "TIMER_Interactivity",
      title: "Timer"),
  RiveAsset("assets/RiveAssets/icons.riv",
      artboard: "BELL",
      stateachineName: "BELL_Interactivity",
      title: "Notifications"),
  RiveAsset("assets/RiveAssets/icons.riv",
      artboard: "USER",
      stateachineName: "USER_Interactivity",
      title: "Profile"),
];

List<RiveAsset> sideMenus = [
  RiveAsset(
    "assets/RiveAssets/icons.riv",
    artboard: "HOME",
    stateachineName: "HOME_interactivity",
    title: "Home",
  ),
  RiveAsset(
    "assets/RiveAssets/icons.riv",
    artboard: "SEARCH",
    stateachineName: "SEARCH_Interactivity",
    title: "Search",
  ),
  RiveAsset(
    "assets/RiveAssets/icons.riv",
    artboard: "LIKE/STAR",
    stateachineName: "STAR_Interactivity",
    title: "Favorites",
  ),
  RiveAsset(
    "assets/RiveAssets/icons.riv",
    artboard: "CHAT",
    stateachineName: "CHAT_Interactivity",
    title: "Help",
  ),
];

List<RiveAsset> sideMenu2 = [
  RiveAsset(
    "assets/RiveAssets/icons.riv",
    artboard: "TIMER",
    stateachineName: "TIMER_Interactivity",
    title: "History",
  ),
  RiveAsset(
    "assets/RiveAssets/icons.riv",
    artboard: "BELL",
    stateachineName: "BELL_Interactivity",
    title: "Notification",
  ),
];
