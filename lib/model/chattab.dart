class Tabdata {
  final bool? success;
  final Data? data;
  final String? message;

  Tabdata({
    this.success,
    this.data,
    this.message,
  });

  Tabdata.fromJson(Map<String, dynamic> json)
    : success = json['success'] as bool?,
      data = (json['data'] as Map<String,dynamic>?) != null ? Data.fromJson(json['data'] as Map<String,dynamic>) : null,
      message = json['message'] as String?;

  Map<String, dynamic> toJson() => {
    'success' : success,
    'data' : data?.toJson(),
    'message' : message
  };
}

class Data {
  final List<dynamic>? groups;
  final List<Users>? users;
  final List<Chats>? chats;

  Data({
    this.groups,
    this.users,
    this.chats,
  });

  Data.fromJson(Map<String, dynamic> json)
    : groups = json['groups'] as List?,
      users = (json['users'] as List?)?.map((dynamic e) => Users.fromJson(e as Map<String,dynamic>)).toList(),
      chats = (json['chats'] as List?)?.map((dynamic e) => Chats.fromJson(e as Map<String,dynamic>)).toList();

  Map<String, dynamic> toJson() => {
    'groups' : groups,
    'users' : users?.map((e) => e.toJson()).toList(),
    'chats' : chats?.map((e) => e.toJson()).toList()
  };
}

class Users {
  final int? id;
  final String? name;
  final String? email;
  final dynamic emailAddress2;
  final dynamic emailVerifiedAt;
  final dynamic currentTeamId;
  final String? profilePhotoPath;
  final dynamic createdAt;
  final String? updatedAt;
  final int? type;
  final int? roleId;
  final dynamic country;
  final dynamic telephone;
  final dynamic telephone2;
  final dynamic companyName;
  final dynamic addressLine1;
  final dynamic addressLine2;
  final dynamic addressLine3;
  final dynamic city;
  final dynamic area;
  final dynamic postcode;
  final dynamic fullName;
  final dynamic slaContent;
  final dynamic dataContent;
  final dynamic slaSignature;
  final dynamic dataSignature;
  final String? fcmToken;
  final String? profilePhotoUrl;
  final String? profileUrl;

  Users({
    this.id,
    this.name,
    this.email,
    this.emailAddress2,
    this.emailVerifiedAt,
    this.currentTeamId,
    this.profilePhotoPath,
    this.createdAt,
    this.updatedAt,
    this.type,
    this.roleId,
    this.country,
    this.telephone,
    this.telephone2,
    this.companyName,
    this.addressLine1,
    this.addressLine2,
    this.addressLine3,
    this.city,
    this.area,
    this.postcode,
    this.fullName,
    this.slaContent,
    this.dataContent,
    this.slaSignature,
    this.dataSignature,
    this.fcmToken,
    this.profilePhotoUrl,
    this.profileUrl,
  });

  Users.fromJson(Map<String, dynamic> json)
    : id = json['id'] as int?,
      name = json['name'] as String?,
      email = json['email'] as String?,
      emailAddress2 = json['email_address_2'],
      emailVerifiedAt = json['email_verified_at'],
      currentTeamId = json['current_team_id'],
      profilePhotoPath = json['profile_photo_path'] as String?,
      createdAt = json['created_at'],
      updatedAt = json['updated_at'] as String?,
      type = json['type'] as int?,
      roleId = json['role_id'] as int?,
      country = json['country'],
      telephone = json['telephone'],
      telephone2 = json['telephone_2'],
      companyName = json['company_name'],
      addressLine1 = json['address_line_1'],
      addressLine2 = json['address_line_2'],
      addressLine3 = json['address_line_3'],
      city = json['city'],
      area = json['area'],
      postcode = json['postcode'],
      fullName = json['full_name'],
      slaContent = json['sla_content'],
      dataContent = json['data_content'],
      slaSignature = json['sla_signature'],
      dataSignature = json['data_signature'],
      fcmToken = json['fcm_token'] as String?,
      profilePhotoUrl = json['profile_photo_url'] as String?,
      profileUrl = json['profile_url'] as String?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    'email' : email,
    'email_address_2' : emailAddress2,
    'email_verified_at' : emailVerifiedAt,
    'current_team_id' : currentTeamId,
    'profile_photo_path' : profilePhotoPath,
    'created_at' : createdAt,
    'updated_at' : updatedAt,
    'type' : type,
    'role_id' : roleId,
    'country' : country,
    'telephone' : telephone,
    'telephone_2' : telephone2,
    'company_name' : companyName,
    'address_line_1' : addressLine1,
    'address_line_2' : addressLine2,
    'address_line_3' : addressLine3,
    'city' : city,
    'area' : area,
    'postcode' : postcode,
    'full_name' : fullName,
    'sla_content' : slaContent,
    'data_content' : dataContent,
    'sla_signature' : slaSignature,
    'data_signature' : dataSignature,
    'fcm_token' : fcmToken,
    'profile_photo_url' : profilePhotoUrl,
    'profile_url' : profileUrl
  };
}

class Chats {
  final int? id;
  final int? userId;
  final int? receiverId;
  final dynamic groupId;
  final String? message;
  final dynamic file;
  final int? type;
  final String? createdAt;
  final String? updatedAt;

  Chats({
    this.id,
    this.userId,
    this.receiverId,
    this.groupId,
    this.message,
    this.file,
    this.type,
    this.createdAt,
    this.updatedAt,
  });

  Chats.fromJson(Map<String, dynamic> json)
    : id = json['id'] as int?,
      userId = json['user_id'] as int?,
      receiverId = json['receiver_id'] as int?,
      groupId = json['group_id'],
      message = json['message'] as String?,
      file = json['file'],
      type = json['type'] as int?,
      createdAt = json['created_at'] as String?,
      updatedAt = json['updated_at'] as String?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'user_id' : userId,
    'receiver_id' : receiverId,
    'group_id' : groupId,
    'message' : message,
    'file' : file,
    'type' : type,
    'created_at' : createdAt,
    'updated_at' : updatedAt
  };
}