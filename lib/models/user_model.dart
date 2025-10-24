import 'dart:convert';

class UserModel {
  final int id;
  final String name;
  final String email;
  final String? profilePicUrl;
  final String? provider;
  final String? providerId;
  final DateTime? emailVerifyAt;
  final bool? isVerified;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  UserModel({
    required this.id,
    required this.email,
    required this.name,
    this.profilePicUrl,
    this.createdAt,
    this.updatedAt,
    this.emailVerifyAt,
    this.isVerified,
    this.provider,
    this.providerId,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'profilePicUrl': profilePicUrl,
      'provider': provider,
      'providerId': providerId,
      'emailVerifyAt': emailVerifyAt,
      'isVerified': isVerified,
      'createdAt': createdAt,
      'updatedAt': createdAt,
    };
  }

  static UserModel? fromMap(Map<String, dynamic>? map) {
    if (map == null) return null;
    try {
      return UserModel(
        id: map['id'],
        name: map['name'],
        email: map['email'],
        profilePicUrl: map['profilePicUrl'],
        provider: map['provider'],
        providerId: map['providerId'],
        emailVerifyAt: DateTime.fromMillisecondsSinceEpoch(
          map['emailVerifyAt'],
        ),
        isVerified: map['isVerified'],
        createdAt: DateTime.tryParse(map['createdAt']),
        updatedAt: DateTime.tryParse(map['updatedAt']),
      );
    } catch (e) {
      return null;
    }
  }

  String toJson() => json.encode(toMap());

  static UserModel? fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
