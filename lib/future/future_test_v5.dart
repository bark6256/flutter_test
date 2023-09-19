import 'package:http/http.dart' as http;
void main() {
  // fetchTodo().then((res) {
  //   print('http status code : ${res.statusCode}');
  //   print('http Message header : ${res.headers}');
  //   print('http Message body : ${res.body}');
  // });

  fetchTodoList().then((res) {
    print('http status code : ${res.statusCode}');
    print('http Message header : ${res.headers}');
    print('http Message body : ${res.body}');
  });
}

// 함수 설계
Future<http.Response> fetchTodo() async {
  const url = "https://jsonplaceholder.typicode.com/todos/1";
  var response = await http.get(Uri.parse(url));
  print(response.runtimeType);
  return response;
}

// 함수 설계
Future<http.Response> fetchTodoList() async {
  const url = "https://jsonplaceholder.typicode.com/todos";
  var response = await http.get(Uri.parse(url));
  return response;
}