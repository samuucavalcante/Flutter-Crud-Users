import 'package:crud/components/user_title.dart';
import 'package:crud/models/user.dart';
import 'package:crud/provider/users.dart';
import 'package:crud/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final users = Provider.of<Users>(context);

    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Lista de Usuários')),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.USER_FORM);
              },
            )
          ],
        ),
        body: ListView.builder(
          itemCount: users.count,
          itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
        ));
  }
}
