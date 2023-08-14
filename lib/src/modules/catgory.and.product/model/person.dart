import 'dart:convert';

class Person {
  String? name;
  String? designation;
  Person({
    this.name,
    this.designation,
  });

  Person copyWith({
    String? name,
    String? designation,
  }) {
    return Person(
      name: name ?? this.name,
      designation: designation ?? this.designation,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'designation': designation,
    };
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      name: map['name'] != null ? map['name'] as String : null,
      designation:
          map['designation'] != null ? map['designation'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Person.fromJson(String source) =>
      Person.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Person(name: $name, designation: $designation)';

  @override
  bool operator ==(covariant Person other) {
    if (identical(this, other)) return true;

    return other.name == name && other.designation == designation;
  }

  @override
  int get hashCode => name.hashCode ^ designation.hashCode;
}
