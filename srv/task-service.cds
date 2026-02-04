using { db as mydb } from '../db/schema';

service TaskService {
  entity Tasks as projection on mydb.Tasks;
}
