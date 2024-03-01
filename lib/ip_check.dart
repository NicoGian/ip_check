import "package:http/http.dart" as http;
import "dart:convert";
import "models/ip.dart";

const stringUrl = 'https://ipapi.co/json';


Future<Ip> getIp() async{
  final url = Uri.parse(stringUrl);  //Uri.parse = trasforma la variabile in un oggetto Uri
  final res = await http.get(url);
  final Map<String, dynamic> data = json.decode(res.body);
    
  return Ip(ip: data['ip'], region: data['region'], city: data['city']); 
}

