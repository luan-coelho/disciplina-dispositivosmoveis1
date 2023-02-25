void main() {
  Employee programmer = Programmer(4500.00, "Marcos Silva");
  print(programmer.calculateSalaryBonus());

  Employee analyst = Analyst(5500.00, "João Souza");
  print(analyst.calculateSalaryBonus());

  Employee manager = Manager(8000.00, "Marcos Silva");
  print(manager.calculateSalaryBonus());
}

abstract class Employee {
  String _name;
  double _salary;

  String get name => _name;

  void set name(String name) => this._name = name;

  double get salary => _salary;

  set salary(double salary) => this._salary = salary;

  Employee(this._salary, this._name);

  double calculateSalaryBonus();
}

class Programmer extends Employee {
  Programmer(super.salary, super.name);

  @override
  double calculateSalaryBonus() {
    return this._salary + (this.salary * 0.10);
  }
}

class Analyst extends Employee {
  Analyst(super.salary, super.name);

  @override
  double calculateSalaryBonus() {
    return this._salary + (this.salary * 0.20);
  }
}

class Manager extends Employee {
  Manager(super.salary, super.name);

  @override
  double calculateSalaryBonus() {
    return this._salary + (this.salary * 0.40);
  }
}
