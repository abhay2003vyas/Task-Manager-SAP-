namespace db;

entity Company {
  key ID       : UUID;
  name         : String(100);
  location     : String(100);

  departments  : Composition of many Department
                    on departments.company = $self;
}

entity Department {
  key ID       : UUID;
  name         : String(100);

  company      : Association to Company;
  employees    : Composition of many Employee
                    on employees.department = $self;
}

entity Employee {
  key ID       : UUID;
  name         : String(100);
  email        : String(100);

  department   : Association to Department;
  manager      : Association to Employee;
}

entity Tasks {
  key ID       : UUID;
  title        : String(200);
  status       : String(50);

  company      : Association to Company;
  department   : Association to Department;
  employee     : Association to Employee;

  statusCriticality : Integer;
}