void main() {
  void travel({String? userPlace}) {
    const Map place = {
      "bagan": ["bagan1", "bagan2", "bagan3"],
      "yangon": ["yangon1", "yangon2", "yangon3"],
      "pyinoolwin": ["pyinoolwin1", "pyinoolwin2", "pyinoolwin3"]
    };
    print(place.entries);
    // if (userPlace != null) {
    //   place.forEach((key, value) {
    //     if (key == userPlace) {
    //       for (var element in value) {
    //         print("You can go to $element");
    //       }
    //     }
    //   });
    // } else {
    //   print("Go To Bed");
    // }
  }

  travel();
}
