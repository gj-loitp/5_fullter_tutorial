import 'package:http/http.dart' as http;

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
const apiUrl = 'https://reqres.in/api';

getUsers([int pageNo = 1]) async {
  final uri = Uri.parse("$apiUrl/users?page=$pageNo");
  var response = await http.get(uri);
  return response;
}
