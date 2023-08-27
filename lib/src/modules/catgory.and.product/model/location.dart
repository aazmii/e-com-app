import 'dart:convert';

class Location {
  String? address;
  Location({
    this.address,
  });

  Location copyWith({
    String? address,
  }) {
    return Location(
      address: address ?? this.address,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
    };
  }

  static fromMap(Map<String, dynamic> map) {
    return Location(
      address: map['address'] != null ? map['address'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  static fromJson(String source) =>
      Location.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Location(address: $address)';

  @override
  bool operator ==(covariant Location other) {
    if (identical(this, other)) return true;

    return other.address == address;
  }

  @override
  int get hashCode => address.hashCode;
}
