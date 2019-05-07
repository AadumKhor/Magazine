class Article {
  String imgPath;
  String date;
  String title;
  String data;

  Article({this.imgPath, this.data, this.title, this.date});
}

List<Article> list = [
  Article(
      title: 'COLOR \nMOOD',
      imgPath:
          'http://www.wallpaperbetter.com/wallpaper/1010/55/778/powder-colorful-splash-1080P-wallpaper-middle-size.jpg'),
  Article(
      title: 'RED \nVELVET',
      imgPath: 'https://images4.alphacoders.com/171/thumb-1920-171916.jpg'),
  Article(
      title: 'SUNRISE \nMARKET',
      imgPath:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ__3z1asif5Ug13ruYLgCymDC3ZDtZr8MpGQwSB0bBsSo2StSj'),
  Article(
      title: 'SPRING \nNOTES',
      imgPath:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYXMCN561h_HuuJ3XQo_8U71egryEIdKwqJ8pM4sDCaFrz53Yp')
];
