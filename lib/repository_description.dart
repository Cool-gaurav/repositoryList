import 'package:flutter/material.dart';
import 'package:flutter_app_list/model/repository_item.dart';

class RepositoryDescription extends StatelessWidget {
  final RepositoryItem item;
  RepositoryDescription(this.item);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Repository Description"),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 16, top: 32,right: 16),
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Text(item.repositoryDescription==null?"No Description":item.repositoryDescription),],
          ),
        ));
  }
}
