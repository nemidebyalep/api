import 'dart:convert' as convert;

import 'package:http/http.dart' as http;


void main(List<String> arguments) {

 final url =Uri.parse('http://localhost:3000/api/auth/matricula');
  http.get(url).then((res){
    final body = convert.jsonDecode(res.body);
    
      for(int i=0; i<50;i++){

       print('${body[i]['fecha']}');
      }
      
  });
}