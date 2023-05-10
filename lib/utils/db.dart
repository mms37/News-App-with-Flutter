
import 'package:postgres/postgres.dart';

void main() async {
  final databaseConnection = PostgreSQLConnection( 
    "91.225.104.133", 
    5432, 
    'news', 
    queryTimeoutInSeconds: 3600, 
    timeoutInSeconds: 3600, 
    username: 'news', 
    password: 'cq176eX');

  await databaseConnection.open();
  print("connect");

}