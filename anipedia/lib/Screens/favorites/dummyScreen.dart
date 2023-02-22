import 'package:anipedia/database/database_handler.dart';
import 'package:anipedia/database/user_model.dart';
import 'package:anipedia/database/user_repo.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class UsingDataBase extends StatelessWidget {
  UsingDataBase({super.key});
  Database? _database;
  var nameController;
  var imageController;
  var favController;
  var descriptionController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  nameController = 'name';
                  imageController = 'image';
                  favController = false;
                  descriptionController = 'descrition';
                  insertDB();
                },
                child: const Text("Add"),
              ),
              ElevatedButton(
                onPressed: () {
                  getFromUser();
                },
                child: const Text("Print"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<Database?> openDB() async {
    _database = await DatabaseHandler().openDB();
    return _database;
  }

  Future<void> insertDB() async {
    _database = await openDB();

    UserRepo userRepo = UserRepo();
    userRepo.createTable(_database);

    UserModel userModel = UserModel(
      nameController.toString(),
      imageController.toString(),
      favController,
      descriptionController.toString(),
    );
    await _database?.insert('User', userModel.toMap());
    await _database?.close();
  }

  Future<void> getFromUser() async {
    _database = await openDB();
    UserRepo userRepo = UserRepo();
    await userRepo.getUsers(_database);
    await _database?.close();
  }
}
