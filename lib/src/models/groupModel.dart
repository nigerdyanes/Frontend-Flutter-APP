class GroupModel {
  String idGroup;
  String groupName;
  String groupPassword;
  String dateCreated;

  GroupModel({this.idGroup, this.groupName, this.groupPassword, this.dateCreated});

  GroupModel.fromJson(Map<String, dynamic> json) {
    idGroup = json['idGroup'];
    groupName = json['groupName'];
    groupPassword = json['groupPassword'];
    dateCreated = json['dateCreated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idGroup'] = this.idGroup;
    data['groupName'] = this.groupName;
    data['groupPassword'] = this.groupPassword;
    data['dateCreated'] = this.dateCreated;
    return data;
  }
}