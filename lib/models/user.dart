// ======================================================
// TODO: USER MODEL
// ======================================================

// Buat class bernama User dan propertinya 
    class User {
        final String id;
        final String email;
        final String? displayName; // nullable
        final int age;
        final bool isActive;

// Buat constructor dengan required keyword yang tepat.
//    Pastikan null safety diterapkan dengan benar.
        User({
            required this.id,
            required this.email,
            this.displayName,
            required this.age,
            required this.isActive,
        });

//  Buat factory constructor:
    factory User.fromJson(Map<String, dynamic> json) {
        return User(
            id: json['id'] ?? '',
            email: json['email'] ?? '',
            displayName: json['displayName'],
            age: json['age'] ?? 0,
            isActive: json['isActive'] ?? false,
        );
    }
// Buat method toJson()
    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'email': email,
            'displayName': displayName,
            'age': age,
            'isActive': isActive,
        };
    }
// Buat method copyWith()
    User copyWith({
        String? id,
        String? email,
        String? displayName,
        int? age,
        bool? isActive,
    }) {
        return User(
            id: id ?? this.id,
            email: email ?? this.email,
            displayName: displayName ?? this.displayName,
            age: age ?? this.age,
            isActive: isActive ?? this.isActive,
        );
    }
// Tambahkan override toString() untuk debugging (opsional tapi disarankan)
    @override
    String toString() {
        return 'User{id: $id, email: $email, displayName: $displayName, age: $age, isActive: $isActive}';
    }
}
