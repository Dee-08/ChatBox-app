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

  UserModel({
    required this.id,
    required this.email,
    required this.name,
    this.profilePicUrl,
    this.createdAt,
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
      'emailVerifyAt': emailVerifyAt?.millisecondsSinceEpoch,
      'isVerified': isVerified,
      'createdAt': createdAt?.millisecondsSinceEpoch,
    };
  }
}
