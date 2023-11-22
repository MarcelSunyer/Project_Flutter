import 'dart:convert';

import 'package:app_book/models/users.dart';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

Future<List<User>> apiLoadUsers() async {
  final uri = Uri.parse("https://randomuser.me/api/");
  final response = await http.get(uri);
  final json = jsonDecode(response.body);
  final jsonUserList = json["results"];
  final List<User> userList = [];
      for(final jsonUser in jsonUserList)
      {
        final user = User.fromJson(jsonUser);
        userList.add(user);
      }
    return userList;
}