
import 'dart:convert';

GroupUserResponse groupUserResponseFromJson(String str) => GroupUserResponse.fromJson(json.decode(str));

String groupUserResponseToJson(GroupUserResponse data) => json.encode(data.toJson());

class GroupUserResponse {
    int? code;
    String? message;
    List<GroupData>? data;

    GroupUserResponse({
        this.code,
        this.message,
        this.data,
    });

    factory GroupUserResponse.fromJson(Map<String, dynamic> json) => GroupUserResponse(
        code: json["code"],
        message: json["message"],
        data: json["data"] == null ? [] : List<GroupData>.from(json["data"]!.map((x) => GroupData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class GroupData {
    int? userGroupId;
    int? userId;
    String? groupName;

    GroupData({
        this.userGroupId,
        this.userId,
        this.groupName,
    });

    factory GroupData.fromJson(Map<String, dynamic> json) => GroupData(
        userGroupId: json["userGroupId"],
        userId: json["userId"],
        groupName: json["groupName"],
    );

    Map<String, dynamic> toJson() => {
        "userGroupId": userGroupId,
        "userId": userId,
        "groupName": groupName,
    };
}
