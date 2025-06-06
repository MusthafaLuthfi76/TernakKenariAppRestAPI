import 'dart:convert';

class IndukRequestModel {
    final int? adminId;
    final String? noRing;
    final DateTime? tanggalLahir;
    final String? jenisKelamin;
    final String? jenisKenari;
    final dynamic keterangan;
    final String? gambarInduk;
    final DateTime? updatedAt;
    final DateTime? createdAt;
    final int? id;

    IndukRequestModel({
        this.adminId,
        this.noRing,
        this.tanggalLahir,
        this.jenisKelamin,
        this.jenisKenari,
        this.keterangan,
        this.gambarInduk,
        this.updatedAt,
        this.createdAt,
        this.id,
    });

    IndukRequestModel copyWith({
        int? adminId,
        String? noRing,
        DateTime? tanggalLahir,
        String? jenisKelamin,
        String? jenisKenari,
        dynamic keterangan,
        String? gambarInduk,
        DateTime? updatedAt,
        DateTime? createdAt,
        int? id,
    }) => 
        IndukRequestModel(
            adminId: adminId ?? this.adminId,
            noRing: noRing ?? this.noRing,
            tanggalLahir: tanggalLahir ?? this.tanggalLahir,
            jenisKelamin: jenisKelamin ?? this.jenisKelamin,
            jenisKenari: jenisKenari ?? this.jenisKenari,
            keterangan: keterangan ?? this.keterangan,
            gambarInduk: gambarInduk ?? this.gambarInduk,
            updatedAt: updatedAt ?? this.updatedAt,
            createdAt: createdAt ?? this.createdAt,
            id: id ?? this.id,
        );

    factory IndukRequestModel.fromJson(String str) => IndukRequestModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory IndukRequestModel.fromMap(Map<String, dynamic> json) => IndukRequestModel(
        adminId: json["admin_id"],
        noRing: json["no_ring"],
        tanggalLahir: json["tanggal_lahir"] == null ? null : DateTime.parse(json["tanggal_lahir"]),
        jenisKelamin: json["jenis_kelamin"],
        jenisKenari: json["jenis_kenari"],
        keterangan: json["keterangan"],
        gambarInduk: json["gambar_induk"],
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        id: json["id"],
    );

    Map<String, dynamic> toMap() => {
        "admin_id": adminId,
        "no_ring": noRing,
        "tanggal_lahir": "${tanggalLahir!.year.toString().padLeft(4, '0')}-${tanggalLahir!.month.toString().padLeft(2, '0')}-${tanggalLahir!.day.toString().padLeft(2, '0')}",
        "jenis_kelamin": jenisKelamin,
        "jenis_kenari": jenisKenari,
        "keterangan": keterangan,
        "gambar_induk": gambarInduk,
        "updated_at": updatedAt?.toIso8601String(),
        "created_at": createdAt?.toIso8601String(),
        "id": id,
    };
}
