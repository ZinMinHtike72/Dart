void main() {
  String? name;
  if (name != null && name.contains('aung')) {
    print("His name is Aung Aung");
  } else {
    print("nulll");
  }

  print(name ?? "nullkfskl");
}
