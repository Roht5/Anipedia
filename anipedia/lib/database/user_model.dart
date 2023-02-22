class UserModel{

  final String name;
  final String image;
  bool fav;
  final String description;
  UserModel(this.name,this.image,this.fav,this.description);

  Map<String,dynamic> toMap(){
    return {
      'name': name,
      'image':image,
      'fav':fav,
      'description':description
    };
  }


}