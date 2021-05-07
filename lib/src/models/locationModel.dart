class LocationModel {
  String idLocation;
  String idGroup;
  String idUser;
  String latitudeLocation;
  String longitudeLocation;

  LocationModel(
      {this.idLocation,
      this.idGroup,
      this.idUser,
      this.latitudeLocation,
      this.longitudeLocation});

  LocationModel.fromJson(Map<String, dynamic> json) {
    idLocation = json['idLocation'];
    idGroup = json['idGroup'];
    idUser = json['idUser'];
    latitudeLocation = json['latitudeLocation'];
    longitudeLocation = json['longitudeLocation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idLocation'] = this.idLocation;
    data['idGroup'] = this.idGroup;
    data['idUser'] = this.idUser;
    data['latitudeLocation'] = this.latitudeLocation;
    data['longitudeLocation'] = this.longitudeLocation;
    return data;
  }
}