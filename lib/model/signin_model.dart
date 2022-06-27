class AutoGenerate {
  AutoGenerate({
    required this.success,
    required this.data,
    required this.message,
  });
  late final bool success;
  late final Data data;
  late final String message;

  AutoGenerate.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = Data.fromJson(json['data']);
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['success'] = success;
    _data['data'] = data.toJson();
    _data['message'] = message;
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.name,
    required this.email,
    this.emailAddress_2,
    required this.emailVerifiedAt,
    this.currentTeamId,
    required this.profilePhotoPath,
    required this.createdAt,
    required this.updatedAt,
    required this.type,
    required this.roleId,
    required this.country,
    required this.telephone,
    required this.telephone_2,
    required this.companyName,
    required this.addressLine_1,
    required this.addressLine_2,
    required this.addressLine_3,
    required this.city,
    required this.area,
    required this.postcode,
    required this.fullName,
    required this.slaContent,
    required this.dataContent,
    required this.slaSignature,
    required this.dataSignature,
    required this.fcmToken,
    required this.profilePhotoUrl,
    required this.profileUrl,
    required this.tokenType,
    required this.expiresIn,
    required this.accessToken,
    required this.refreshToken,
  });
  late final int id;
  late final String name;
  late final String email;
  late final Null emailAddress_2;
  late final String emailVerifiedAt;
  late final Null currentTeamId;
  late final String profilePhotoPath;
  late final String createdAt;
  late final String updatedAt;
  late final int type;
  late final int roleId;
  late final String country;
  late final String telephone;
  late final String telephone_2;
  late final String companyName;
  late final String addressLine_1;
  late final String addressLine_2;
  late final String addressLine_3;
  late final String city;
  late final String area;
  late final String postcode;
  late final String fullName;
  late final String slaContent;
  late final String dataContent;
  late final String slaSignature;
  late final String dataSignature;
  late final String fcmToken;
  late final String profilePhotoUrl;
  late final String profileUrl;
  late final String tokenType;
  late final int expiresIn;
  late final String accessToken;
  late final String refreshToken;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailAddress_2 = null;
    emailVerifiedAt = json['email_verified_at'];
    currentTeamId = null;
    profilePhotoPath = json['profile_photo_path'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    type = json['type'];
    roleId = json['role_id'];
    country = json['country'];
    telephone = json['telephone'];
    telephone_2 = json['telephone_2'];
    companyName = json['company_name'];
    addressLine_1 = json['address_line_1'];
    addressLine_2 = json['address_line_2'];
    addressLine_3 = json['address_line_3'];
    city = json['city'];
    area = json['area'];
    postcode = json['postcode'];
    fullName = json['full_name'];
    slaContent = json['sla_content'];
    dataContent = json['data_content'];
    slaSignature = json['sla_signature'];
    dataSignature = json['data_signature'];
    fcmToken = json['fcm_token'];
    profilePhotoUrl = json['profile_photo_url'];
    profileUrl = json['profile_url'];
    tokenType = json['token_type'];
    expiresIn = json['expires_in'];
    accessToken = json['access_token'];
    refreshToken = json['refresh_token'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['email'] = email;
    _data['email_address_2'] = emailAddress_2;
    _data['email_verified_at'] = emailVerifiedAt;
    _data['current_team_id'] = currentTeamId;
    _data['profile_photo_path'] = profilePhotoPath;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['type'] = type;
    _data['role_id'] = roleId;
    _data['country'] = country;
    _data['telephone'] = telephone;
    _data['telephone_2'] = telephone_2;
    _data['company_name'] = companyName;
    _data['address_line_1'] = addressLine_1;
    _data['address_line_2'] = addressLine_2;
    _data['address_line_3'] = addressLine_3;
    _data['city'] = city;
    _data['area'] = area;
    _data['postcode'] = postcode;
    _data['full_name'] = fullName;
    _data['sla_content'] = slaContent;
    _data['data_content'] = dataContent;
    _data['sla_signature'] = slaSignature;
    _data['data_signature'] = dataSignature;
    _data['fcm_token'] = fcmToken;
    _data['profile_photo_url'] = profilePhotoUrl;
    _data['profile_url'] = profileUrl;
    _data['token_type'] = tokenType;
    _data['expires_in'] = expiresIn;
    _data['access_token'] = accessToken;
    _data['refresh_token'] = refreshToken;
    return _data;
  }
}
