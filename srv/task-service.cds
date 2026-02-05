using { db as my } from '../db/schema';

service TaskService @(path:'/odata/v4/TaskService') {
  entity Tasks as projection on my.Tasks;
}
