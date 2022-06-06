import 'package:flutter/material.dart';
import '../constants/all-colors.dart';
import '../models/user.dart';

class ViewMore extends StatelessWidget {
  final User user;

  ViewMore({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              color: AllColors.flat_red,
            )),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 16.0,
            ),
            Center(
              child: (CircleAvatar(
                backgroundImage: NetworkImage(user.picture),
                radius: 160.0,
              )),
            ),
            SizedBox(
              height: 22.0,
            ),
            Text(user.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 36.0,
                  color: AllColors.time,
                )),
            SizedBox(
              height: 32.0,
            ),
            Text(user.phone,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26.0,
                  color: AllColors.primary,
                )),
            SizedBox(
              height: 42.0,
            ),
            Text(user.email,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22.0,
                  color: AllColors.socialFacebook,
                ))
          ],
        ),
      ),
    );
  }
}
