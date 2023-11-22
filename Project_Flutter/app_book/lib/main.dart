import 'package:app_book/api.dart';
import 'package:app_book/models/users.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FutureBuilder(
          future: apiLoadUsers(),
          builder: (
            BuildContext context,
            AsyncSnapshot<List<User>> snapshot,
          ) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }
            final userList = snapshot.data!;
            return ListView.builder(
              itemCount: userList.length,
              itemBuilder: (BuildContext context, int index) {
                return UserListItem(user: userList[index]);
              },
            );
          },
        ),
      ),
    );
  }
}

class UserListItem extends StatelessWidget {
  const UserListItem({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("${user.firstName}${user.lastName}"),
      subtitle: Text(user.email),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(user.avatarUrl),
      ),
    );
  }
}
