import 'dart:convert';

class Footer {
  final String? footerFirstbutton;
  final String? footerSecondbutton;
  final String? copyRight;
  Footer({
    this.footerFirstbutton,
    this.footerSecondbutton,
    this.copyRight,
  });

  Footer copyWith({
    String? footerFirstbutton,
    String? footerSecondbutton,
    String? copyRight,
  }) {
    return Footer(
      footerFirstbutton: footerFirstbutton ?? this.footerFirstbutton,
      footerSecondbutton: footerSecondbutton ?? this.footerSecondbutton,
      copyRight: copyRight ?? this.copyRight,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'footerFirstbutton': footerFirstbutton,
      'footerSecondbutton': footerSecondbutton,
      'copyRight': copyRight,
    };
  }

  static Footer fromMap(Map<String, dynamic> map) {
    return Footer(
      footerFirstbutton: map['footerFirstbutton'] as String?,
      footerSecondbutton: map['footerSecondbutton'] as String?,
      copyRight: map['copyRight'] as String?,
    );
  }
  
  String toJson() => json.encode(toMap());

static Footer fromJson(String source) =>
       fromMap(json.decode(source) as Map<String, dynamic>);
}
