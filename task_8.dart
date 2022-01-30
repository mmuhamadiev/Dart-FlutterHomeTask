class User {

final String email;

User(this.email);

void display() {
  print(email);
}

}

class AdminUser extends User with GetMailSystem {


  AdminUser(String email) : super(email);

  @override
  void display() {

    print(super.getMailSystem[1]);

  }

}

class GeneralUser extends User {
  GeneralUser(String email) : super(email);
}

mixin GetMailSystem on User {

  List<String> get getMailSystem => email.split('@');
}

class UserManager<T extends User> {
  void userData(T data) {
    final users = data.email;
    print(users);
  }

  addUser() {

  }
}
