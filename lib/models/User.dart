// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.iduser,
    this.status,
  });

  String iduser;
  String status;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        iduser: json["iduser"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "iduser": iduser,
        "status": status,
      };
}
