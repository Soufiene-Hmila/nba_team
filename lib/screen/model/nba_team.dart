class NbaTeam {

    String? abbreviation;
    String? city;
    String? conference;
    String? division;
    String? full_name;
    int id;
    String? name;

    NbaTeam({this.abbreviation, this.city, this.conference,
        this.division, this.full_name, required this.id, this.name});

    factory NbaTeam.fromJson(Map<String, dynamic> json) {
        return NbaTeam(
            abbreviation: json['abbreviation'], 
            city: json['city'], 
            conference: json['conference'], 
            division: json['division'], 
            full_name: json['full_name'], 
            id: json['id'], 
            name: json['name'], 
        );
    }

}