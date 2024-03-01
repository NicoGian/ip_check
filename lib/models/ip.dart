//dentro models ci vanno tutte le classi che non contengono logica

class Ip {
  String ip, region, city;

  Ip({required this.ip, required this.region, required this.city}); //costruttore

  @override
  String toString() {
    return "ip: $ip | region: $region | city: $city";
  } //facendo il print di questo oggetto mi ritorna questa stringa
}