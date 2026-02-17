// ======================================================
// TODO: MOCK USER SERVICE
// ======================================================

// Import model User.
import '../models/user.dart';


// Buat class bernama MockUserService.
class MockUserService {
// Buat method fetchUsers()
  Future<List<User>> fetchUsers({bool shouldFail = false}) async {

// Future.delayed 
// Ini mensimulasikan API call async
  await Future.delayed(Duration(seconds: 1));

// jika shouldFail true, lempar exception untuk simulasi error
  if (shouldFail) {
      throw Exception("Failed to fetch users");
    }
  // jika tidak gagal, kembalikan list dummy User
   return [
      User(
        id: "1",
        email: "alice@example.com",
        displayName: "Alice",
        age: 21,
        isActive: true,
      ),
      User(
        id: "2",
        email: "bob@example.com",
        displayName: null,
        age: 25,
        isActive: false,
      ),
      User(
        id: "3",
        email: "charlie@example.com",
        displayName: "Charlie",
        age: 19,
        isActive: true,
      ),
    ];
  }
}
