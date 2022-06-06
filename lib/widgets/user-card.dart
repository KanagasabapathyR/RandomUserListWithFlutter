import 'package:flutter/material.dart';
import '../constants/all-colors.dart';

class UserCard extends StatelessWidget {
  UserCard(
      {this.name = "",
      this.email = "",
      this.phone = "",
      this.picture = "",
      this.tap = defaultFunc});

  final String picture;
  final Function() tap;
  final String name;
  final String email;
  final String phone;

  static void defaultFunc() {}

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Container(
      height: 200,
      child: GestureDetector(
        onTap: tap,
        child: Card(
            elevation: 3,
            shadowColor: AllColors.muted.withOpacity(0.3),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                    flex: 10,
                    child: Center(
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 50.0,
                        backgroundImage: NetworkImage(picture),
                      ),
                    )),
                Flexible(
                    flex: 2,
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: 2.0, right: 2.0, top: 0, bottom: 0),
                            child: Text(name,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: AllColors.primary,
                                ))))),
                Flexible(
                    flex: 2,
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: 2.0, right: 2.0, top: 0, bottom: 0),
                            child: Text(phone,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: AllColors.time,
                                ))))),
                Flexible(
                    flex: 2,
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: 2.0, right: 2.0, top: 0, bottom: 0),
                            child: Text(email,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: AllColors.secondary,
                                ))))),
                Flexible(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 2.0, bottom: 2.0, left: 2.0, right: 2.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: RaisedButton(
                              textColor: AllColors.white,
                              color: AllColors.flat_red,
                              onPressed: tap,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(42.0),
                              ),
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 1.0, right: 1.0, top: 1, bottom: 1),
                                  child: Text('View More',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 14.0))),
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            )),
      ),
    ));
  }
}
