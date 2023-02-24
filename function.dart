void main() {
  void play({required String gameName, String? action, String? year}) {
    print("$gameName ${year ?? '2023'}");
    if (action != null && action.contains("lag")) {
      print("Game is Lag");
    }
  }

  String name = "Zin Min Htike";

  play(gameName: "Fifa", action: "lag");
}
