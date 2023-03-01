void main() {
  String select(String type) {
    switch (type) {
      case "window":
        return "You are using Window";
      case "ubuntu":
        return "You are using ubuntu";
      default:
        return "Nothing!";
    }
  }

  void Print(String data) {
    print(data);
  }

  Print(select("ubuntu"));
}
