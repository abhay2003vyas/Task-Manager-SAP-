using { db as my } from '../db/schema';

service TaskService {

  entity Tasks       as projection on my.Tasks;
  entity Company     as projection on my.Company;
  entity Departments as projection on my.Department;
  entity Employees   as projection on my.Employee;

}