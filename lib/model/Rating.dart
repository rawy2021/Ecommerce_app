// ignore_for_file: file_names

import 'dart:convert';

Rating ratingFromJson(String str) => Rating.fromJson(json.decode(str));
String ratingToJson(Rating data) => json.encode(data.toJson());

class Rating {
  Rating({
    this.rate,
    this.count,
  });

  Rating.fromJson(dynamic json) {
    rate = json['rate'];
    count = json['count'];
  }
  num? rate;
  num? count;
  Rating copyWith({
    num? rate,
    num? count,
  }) =>
      Rating(
        rate: rate ?? this.rate,
        count: count ?? this.count,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rate'] = rate;
    map['count'] = count;
    return map;
  }
}
