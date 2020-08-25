import 'dart:io';
import 'dart:convert';

///http get请求(复制的官网demo)
get(String url,String param) async{
  url = url == null ? 'http://192.168.0.121:8091/article/test/' + param : url + param;
  var httpClient = new HttpClient();
  String result;
  List list;
  try {
    var request = await httpClient.getUrl(Uri.parse(url));
    var response = await request.close();
    if (response.statusCode == HttpStatus.ok) {
      var json = await response.transform(utf8.decoder).join();
      var data = jsonDecode(json);
      list = data['rows'];
      print(list);
      return list;
    } else {
      result =
      'Error getting IP address:\nHttp status ${response.statusCode}';
    }
  } catch (exception) {
    result = 'Failed getting IP address';
    print(result);
  }
}



