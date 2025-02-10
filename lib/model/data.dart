class Destination {
  late String name;
  late String image;
  late String rate;
  late String location;

  Destination(this.name, this.image, this.rate, this.location);
}

List<Destination> destinations = [
  Destination("Coastline", "image/Coast.jpg", "5.0", "Tokyo,Japan"),
  Destination("Forest", "image/Forest.jpg", "5.0", "Tokyo,Japan"),
  Destination("Matterhorn", "image/Moun.jpg", "5.0", "Schwarzsee,switzerland"),
  Destination("DeepDark", "image/Ocean.jpg", "5.0", "Tokyo,Japan"),
  Destination("Eruption", "image/Vol.jpg", "5.0", "Tokyo,Japan")
];
