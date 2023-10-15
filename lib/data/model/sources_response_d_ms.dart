class SourcesResponseDM {
  String? status;
  List<Source>? sources;
  String? code;
  String? message;

  SourcesResponseDM({this.status, this.sources, this.code, this.message});

  SourcesResponseDM.fromJson(dynamic json) {
    status = json["status"];
    code = json["code"];
    message = json["message"];
    sources = json["sources"] == null
        ? null
        : (json["sources"] as List).map((e) => Source.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["status"] = status;
    if (sources != null) {
      _data["sources"] = sources?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Source {
  String? id;
  String? name;
  String? description;
  String? url;
  String? category;
  String? language;
  String? country;

  Source(
      {this.id,
      this.name,
      this.description,
      this.url,
      this.category,
      this.language,
      this.country});

  Source.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    description = json["description"];
    url = json["url"];
    category = json["category"];
    language = json["language"];
    country = json["country"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["description"] = description;
    _data["url"] = url;
    _data["category"] = category;
    _data["language"] = language;
    _data["country"] = country;
    return _data;
  }
}
