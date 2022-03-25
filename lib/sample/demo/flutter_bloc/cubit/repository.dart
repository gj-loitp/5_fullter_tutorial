import 'package:http/http.dart' as http;

const apiUrl = 'https://reqres.in/api';

getUsers([int pageNo = 1]) async {
  final uri = Uri.parse("$apiUrl/users?page=$pageNo");
  var response = await http.get(uri);
  return response;
}
