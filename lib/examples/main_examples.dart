// ======================================================
// TODO: MAIN EXAMPLES (ENTRY POINT)
// ======================================================

// Import:
import '../models/user.dart';
import '../services/mock_service.dart';

// Tambahkan void main() async { ... } dan instansiasi MockUserSevice
void main() async {
  final service = MockUserService();

  print("Fetching users...");

// Demonstrasi async/await:
  try {
    final users = await service.fetchUsers();
    print("Users fetched successfully:");
    users.forEach((user) => print(user));
    print("");
  } catch (e) {
    print("Error fetching users: $e");
  }

// Demonstrasi JSON parsing:
  Map<String, dynamic> dummyJson = {
    "id": "10",
    "email": "dummy@example.com",
    "displayName": null,
    "age": 30,
    "isActive": true,
  };

  User userFromJson = User.fromJson(dummyJson);
  print("Parsed from JSON:");
  print(userFromJson);
  print("");

// Demonstrasi null safety:
  String name = userFromJson.displayName ?? "No Name";
  print("Display Name (null safety): $name");

// Demonstrasi copyWith():
  User updatedUser = userFromJson.copyWith(
    displayName: "Updated Name",
  );

  print("copyWith result:");
  print(updatedUser);
  print("");
}

// Pastikan file bisa dijalankan dengan: dart run lib/examples/main_examples.dart
