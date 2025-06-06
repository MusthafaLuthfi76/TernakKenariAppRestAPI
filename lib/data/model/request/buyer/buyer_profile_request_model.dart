import 'dart:convert';

class BuyerProfileRequestModel {
    final int? id;
    final String? name;
    final String? address;
    final String? phone;
    final String? photo;

    BuyerProfileRequestModel({
        this.id,
        this.name,
        this.address,
        this.phone,
        this.photo,
    });

    factory BuyerProfileRequestModel.fromJson(String str) => BuyerProfileRequestModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory BuyerProfileRequestModel.fromMap(Map<String, dynamic> json) => BuyerProfileRequestModel(
        id: json["id"],
        name: json["name"],
        address: json["address"],
        phone: json["phone"],
        photo: json["photo"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "address": address,
        "phone": phone,
        "photo": photo,
    };
}
