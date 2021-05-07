class EventModel 
{
  String idEvent;
  String idUser;
  String idGroups;
  String eventType;
  String latitudeEvent;
  String longitudeEvent;
  String descriptionEvent;

  EventModel(
      {this.idEvent,
      this.idUser,
      this.idGroups,
      this.eventType,
      this.latitudeEvent,
      this.longitudeEvent,
      this.descriptionEvent});

  EventModel.fromJson(Map<String, dynamic> json) {
    idEvent = json['idEvent'];
    idUser = json['idUser'];
    idGroups = json['idGroups'];
    eventType = json['eventType'];
    latitudeEvent = json['latitudeEvent'];
    longitudeEvent = json['longitudeEvent'];
    descriptionEvent = json['descriptionEvent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idEvent'] = this.idEvent;
    data['idUser'] = this.idUser;
    data['idGroups'] = this.idGroups;
    data['eventType'] = this.eventType;
    data['latitudeEvent'] = this.latitudeEvent;
    data['longitudeEvent'] = this.longitudeEvent;
    data['descriptionEvent'] = this.descriptionEvent;
    return data;
  }
}