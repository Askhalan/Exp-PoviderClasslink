
import 'package:hive/hive.dart';

part 'student.g.dart';

@HiveType(typeId: 1)
class Student {
  Student({
    this.id,
    required this.firstName,
    required this.lastName, 
    required this.phone,
    required this.place,
    required this.mail,
    required this.image,
  });

  @HiveField(0)
  String firstName;

  @HiveField(1)
  String lastName;
 
  @HiveField(2)
  String place;

  @HiveField(3)
  String mail;

  @HiveField(4)
  String image;

  @HiveField(5)
  int? id;

  @HiveField(6)
  String phone;
}





