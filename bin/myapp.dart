//Basic class
class Animal {
  String? name;
  int? numberOfLegs;
  int? lifeSpan;

  void display() {
    print("Animal name: $name");
    print("Number of legs: $numberOfLegs");
    print("Life span: $lifeSpan");
  }
}

//Constructor
class Person {
  String? name;
  int? age;
  int? rollNumber;

  //traditional constructor
  // Person(String name, int age, int rollNumber) {
  //   this.name = name;
  //   this.age = age;
  //   this.rollNumber = rollNumber;
  // }

  //inline constructor
  //with optional params
  // Person(this.name, this.age, [this.rollNumber]);

  //Named constructor
  //with default value of params
  Person({ this.name, this.age = 20 });
}

class Point {
  final int? x;
  final int? y;

  const Point(this.x, this.y);
}


//inheritance
class Account extends Person {
  String? username;
  String? password;

  Account(this.username, this.password, String name, int age) : super(name: name, age: age);

  void print() {
    
  }
}

//abstract 
abstract class Bank {
  String? name;
  double? rate;

  Bank({ this.name, this.rate });
  void interest();
  void display() {
    print("Bank name $name");
  }
}

class Vietcombank extends Bank {

  Vietcombank(String name, double rate) : super(name: name, rate: rate);

  @override
  void interest() {
    // TODO: implement interest
  }
}

//interface
abstract class IRepository {
  void add();
  void update();
  void delete();
}

abstract class IEvent {
  void addEvent();
}

class Resository implements IRepository, IEvent {
  @override
  void add() {
    // TODO: implement add
  }

  @override
  void delete() {
    // TODO: implement delete
  }

  @override
  void update() {
    // TODO: implement update
  }

  @override
  void addEvent() {
    // TODO: implement addEvent
  }
}

//mixin

mixin ElectricVariant {
  void electricVariant() {
    print("this is an electric varant");
  }
}

mixin PetroVariant {
  void petroVariant() {
    print("this is a petro variant");
  }
}

mixin BankMixin on IRepository {

}

//generic

abstract class IBaseRepository<T> {
  void add(T entity);
}

class BaseRepository<T> implements IBaseRepository<T> {
  @override
  void add(T entity) {
    // TODO: implement add
  }
  
}

class UserRepository extends BaseRepository<Person> {

}

abstract class IUserService {
  void add();
}

class UserService implements IUserService {
  UserRepository? userRepository;

  UserService(this.userRepository);

  @override
  void add() {
    userRepository?.add(Person(name: "Nam", age: 20));
  }
}



void main(List<String> arguments) {
  var p1 = Point(1, 2);
  Vietcombank("Vietcombank", 4.5).display();
} 


