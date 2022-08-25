// To parse this JSON data, do
//
//     final data = dataFromJson(jsonString);

import 'dart:convert';

Data dataFromJson(String str) => Data.fromJson(json.decode(str));

String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    this.success,
    this.message,
    this.token,
    this.data,
    this.pricing,
  });

  bool? success;
  String? message;
  String? token;
  DataClass? data;
  List<Pricing>? pricing;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        success: json["success"],
        message: json["message"],
        token: json["token"],
        data: DataClass.fromJson(json["data"]),
        pricing:
            List<Pricing>.from(json["pricing"].map((x) => Pricing.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "token": token,
        "data": data?.toJson(),
        "pricing": List<dynamic>.from(pricing!.map((x) => x.toJson())),
      };
}

class DataClass {
  DataClass({
    this.userId,
    this.userUniqueId,
    this.easebuzzContactId,
    this.name,
    this.email,
    this.mobile,
    this.profilePic,
    this.facebookId,
    this.googleId,
    this.role,
    this.postalCode,
    this.city,
    this.state,
    this.country,
    this.address,
    this.instantPriorityLimit,
    this.highPriorityLimit,
    this.mediumPriorityLimit,
    this.lowPriorityLimit,
    this.isMerchantChangedPassword,
    this.companyName,
    this.companyAddress,
    this.mobileVerified,
    this.emailVerified,
    this.kycStatus,
    this.panCardImage,
    this.panCardNumber,
    this.aadharCardImageFront,
    this.aadharCardImageBack,
    this.aadharCardNumber,
  });

  int? userId;
  String? userUniqueId;
  dynamic easebuzzContactId;
  String? name;
  String? email;
  String? mobile;
  dynamic profilePic;
  dynamic facebookId;
  dynamic googleId;
  int? role;
  dynamic postalCode;
  dynamic city;
  dynamic state;
  dynamic country;
  dynamic address;
  int? instantPriorityLimit;
  int? highPriorityLimit;
  int? mediumPriorityLimit;
  int? lowPriorityLimit;
  int? isMerchantChangedPassword;
  dynamic companyName;
  dynamic companyAddress;
  int? mobileVerified;
  int? emailVerified;
  int? kycStatus;
  dynamic panCardImage;
  dynamic panCardNumber;
  dynamic aadharCardImageFront;
  dynamic aadharCardImageBack;
  dynamic aadharCardNumber;

  factory DataClass.fromJson(Map<String, dynamic> json) => DataClass(
        userId: json["user_id"],
        userUniqueId: json["user_unique_id"],
        easebuzzContactId: json["easebuzz_contact_id"],
        name: json["name"],
        email: json["email"],
        mobile: json["mobile"],
        profilePic: json["profile_pic"],
        facebookId: json["facebook_id"],
        googleId: json["google_id"],
        role: json["role"],
        postalCode: json["postal_code"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        address: json["address"],
        instantPriorityLimit: json["instant_priority_limit"],
        highPriorityLimit: json["high_priority_limit"],
        mediumPriorityLimit: json["medium_priority_limit"],
        lowPriorityLimit: json["low_priority_limit"],
        isMerchantChangedPassword: json["is_merchant_changed_password"],
        companyName: json["company_name"],
        companyAddress: json["company_address"],
        mobileVerified: json["mobile_verified"],
        emailVerified: json["email_verified"],
        kycStatus: json["kyc_status"],
        panCardImage: json["pan_card_image"],
        panCardNumber: json["pan_card_number"],
        aadharCardImageFront: json["aadhar_card_image_front"],
        aadharCardImageBack: json["aadhar_card_image_back"],
        aadharCardNumber: json["aadhar_card_number"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "user_unique_id": userUniqueId,
        "easebuzz_contact_id": easebuzzContactId,
        "name": name,
        "email": email,
        "mobile": mobile,
        "profile_pic": profilePic,
        "facebook_id": facebookId,
        "google_id": googleId,
        "role": role,
        "postal_code": postalCode,
        "city": city,
        "state": state,
        "country": country,
        "address": address,
        "instant_priority_limit": instantPriorityLimit,
        "high_priority_limit": highPriorityLimit,
        "medium_priority_limit": mediumPriorityLimit,
        "low_priority_limit": lowPriorityLimit,
        "is_merchant_changed_password": isMerchantChangedPassword,
        "company_name": companyName,
        "company_address": companyAddress,
        "mobile_verified": mobileVerified,
        "email_verified": emailVerified,
        "kyc_status": kycStatus,
        "pan_card_image": panCardImage,
        "pan_card_number": panCardNumber,
        "aadhar_card_image_front": aadharCardImageFront,
        "aadhar_card_image_back": aadharCardImageBack,
        "aadhar_card_number": aadharCardNumber,
      };
}

class Pricing {
  Pricing({
    this.id,
    this.name,
    this.priorityRate,
  });

  int? id;
  String? name;
  double? priorityRate;

  factory Pricing.fromJson(Map<String, dynamic> json) => Pricing(
        id: json["id"],
        name: json["name"],
        priorityRate: json["priority_rate"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "priority_rate": priorityRate,
      };
}
