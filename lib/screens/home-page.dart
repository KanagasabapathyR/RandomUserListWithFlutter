import 'package:flutter/material.dart';
import 'package:users/implementations/user-repository.dart';
import 'package:users/widgets/user-row.dart';
import '../models/user.dart';
import '../widgets/loading-view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<User> users = <User>[];
  List<User> firstUsers = <User>[];
  List<User> secondUsers = <User>[];
  bool isLoading = true;
  UserRepositoryImplementation repository = new UserRepositoryImplementation();

  @override
  void initState() {
    super.initState();
    repository.getAll().then((value) {
      setState(() {
        isLoading = false;
        users.addAll(value);
        for (int i = 0; i < users.length; i++) {
          if (i % 2 == 1) {
            secondUsers.add(users[i]);
          } else {
            firstUsers.add(users[i]);
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The List Of Random Users'),
      ),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemBuilder: (context, index) {
              if (!isLoading) {
                return UserRow(
                    firstUser: firstUsers[index],
                    secondUser: secondUsers[index]);
              } else {
                return LoadingView();
              }
            },
            itemCount: firstUsers.length + 1,
          ),
        ),
      ),
    );
  }
}
