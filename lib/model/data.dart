class Destination {
  late String name;
  late String image;
  late String rate;
  late String location;

  Destination(this.name, this.image, this.rate, this.location);
}

List<Destination> destinations = [
  Destination("Zhangjiajie", "image/China.jpg", "5.0", "Hunan,China"),
  Destination("Great Blue Hole", "image/Hole.jpg", "5.0", "	Lighthouse Reef,Belize"),
  Destination("Fairy Pools", "image/Scot.jpg", "5.0", "Scottish Gaelic,Scotland"),
  Destination("Yellowstone National Park", "image/Yellow.jpg", "5.0", "USA"),
  Destination("Zion National Park", "image/Zion.jpg", "5.0", "Utah,USA")
];
