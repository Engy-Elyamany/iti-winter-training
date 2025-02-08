class pageData {
  String image;
  String mainText;
  String description;
  bool? lastPage;

  pageData(
      {this.lastPage = false,
      required this.image,
      required this.mainText,
      required this.description});
}
