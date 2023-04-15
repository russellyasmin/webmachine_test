class MenuController {
  static final MenuController _instance = MenuController._internal();
  factory MenuController() => _instance;

  MenuController._internal();

  static MenuController get instance => _instance;
  // rest of the class code...
}
