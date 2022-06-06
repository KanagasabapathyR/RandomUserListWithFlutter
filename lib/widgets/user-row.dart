import 'package:flutter/material.dart';
import 'package:users/screens/view-more.dart';
import '../models/user.dart';
import 'user-card.dart';

class UserRow extends StatelessWidget {
  final User firstUser, secondUser;

  UserRow({required this.firstUser, required this.secondUser});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      UserCard(
          name: firstUser.name,
          email: firstUser.email,
          phone: firstUser.phone,
          picture: firstUser.picture,
          tap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ViewMore(user: firstUser)));
          }),
      UserCard(
          name: secondUser.name,
          email: secondUser.email,
          phone: secondUser.phone,
          picture: secondUser.picture,
          tap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ViewMore(user: secondUser)));
          }),
    ]);
  }
}
