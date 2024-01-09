class PlaceModel {
  String title, details;
  int rent;
  var url;
  String imagePath;
  List<String> photoCollections = [
    "assets/info/donation.png",
    "assets/info/media.jpg",
    "assets/info/download.jpg",
    "assets/info/donation.png",
    "assets/info/donation.png",
    "assets/info/donation.png",
    "assets/info/donation.png",
    "assets/info/donation.png",
    "assets/info/donation.png",
  ];
  
 
  PlaceModel({
    required this.title,
    required this.details,
    required this.rent,
    required this.imagePath,
    //required this.url,
  });
}

List<PlaceModel> placeCollection = [
  PlaceModel(
    title: "Pro Kids Côte d\'Ivoire",
    details: 'ONG',// "4 College Court Holyoke, Abidjan",
    rent: 1500,
    imagePath: "assets/info/yamou.jpg",


  ),
  PlaceModel(
    title: "UNESCO",
    details: 'Micro entrepreneur',//"221 Filmore St, Princetone, Abidjan",
    rent: 1400,
    imagePath: "assets/info/unesco.jpg",
  ),
  PlaceModel(
    title: "L'association Sourire de l'enfant a distribué 500 cadeaux pour Noël",
    details:'l’association Sourire de l’enfant ouvre une collecte de fonds pour donnez des cadeaux a 250 enfants hospitalisés du CHU de BONUA', //"4 College Court Holyoke, Abidjan",
    rent: 1000000,
    imagePath: "assets/info/media.jpg",
  ),
  PlaceModel(
    title: "Education pour tous",
    details:'',// "4 College Court Holyoke, Abidjan",
    rent: 1200,
    imagePath: "assets/info/coeur.jpeg",
  ),
];


class TypeModel {

  String typeONG;
  List<String> typeCollections = [
    "ONG1",
    "ONG1",
    "ONG12",
    "ONG12",
    "ONG12",
    "ONG12",
    "ONG12",
    "ONG2",
    "ONG2",
  ];
  
 
  TypeModel({
    required this.typeONG,
   
  });
}

