class UserModel {
  String idUser;
  String username;
  String userPassword;
  String statusUser;

  UserModel({this.idUser, this.username, this.userPassword, this.statusUser});

  UserModel.fromJson(Map<String, dynamic> json) {
    idUser = json['idUser'];
    username = json['username'];
    userPassword = json['userPassword'];
    statusUser = json['statusUser'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idUser'] = this.idUser;
    data['username'] = this.username;
    data['userPassword'] = this.userPassword;
    data['statusUser'] = this.statusUser;
    return data;
  }
}