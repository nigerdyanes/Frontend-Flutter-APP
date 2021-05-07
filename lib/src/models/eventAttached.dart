class AttachedModel {
  String idAttached;
  String idEvent;
  String attachedType;
  String urlAttached;
  String votesEvent;

  AttachedModel(
      {this.idAttached,
      this.idEvent,
      this.attachedType,
      this.urlAttached,
      this.votesEvent});

  AttachedModel.fromJson(Map<String, dynamic> json) {
    idAttached = json['idAttached'];
    idEvent = json['idEvent'];
    attachedType = json['attachedType'];
    urlAttached = json['urlAttached'];
    votesEvent = json['votesEvent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idAttached'] = this.idAttached;
    data['idEvent'] = this.idEvent;
    data['attachedType'] = this.attachedType;
    data['urlAttached'] = this.urlAttached;
    data['votesEvent'] = this.votesEvent;
    return data;
  }
}