class User{

  String? name;
  String? userId;
  String? email;

  User({this.name, this.email, this.userId});

  factory User.fromJson(Map<String, dynamic> json)
  =>  User(
    userId: json['_id'],
    email: json['email'],
    name: json['name'],
  );
}