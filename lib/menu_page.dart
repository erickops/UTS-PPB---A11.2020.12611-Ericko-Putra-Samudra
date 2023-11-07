import 'package:flutter/material.dart';
import 'package:shared_preferences/menu.dart';
import 'package:shared_preferences/pesan_page.dart';

//ignore: must_be_immutable
class MenuPage extends StatelessWidget {
MenuPage({super.key});
List<Menu> listMenu = [];
void dummyMenu() {
listMenu.add(Menu(
nama: 'Beras',
deskripsi: "Beras yang dipanen secara berkualitas",
harga: 30000,
gambar: 'beras.jpeg'));
listMenu.add(Menu(
nama: "Pupuk Organik",
deskripsi: "Pupuk organik yang berguna untuk tumbuhan",
harga: 150000,
gambar: 'pupuk.jpg'));
listMenu.add(Menu(
nama: "Jagung",
deskripsi: "Jagung berkualitas hasil panen",
harga: 18000,
gambar: 'jagung.jpg'));
listMenu.add(Menu(
nama: "Gandum",
deskripsi: "Gandum olahan yang telah diolah dengan baik",
harga: 25000,
gambar: 'gandum.jpg'));
listMenu.add(Menu(
nama: "Kacang",
deskripsi: "Kacang yang telah dipanen",
harga: 15000,
gambar: 'kacang.jpg'));
}
@override
Widget build(BuildContext context) {
dummyMenu();
return Scaffold(
appBar: AppBar(title: Text('Aplikasi Menu Produk Pertanian')),
body: Column(children: [
const SizedBox(
width: double.infinity,
child: Text("Pilih Produk"),
),
Expanded(
child: ListView.builder(
itemCount: listMenu.length,
shrinkWrap: true,
itemBuilder: (BuildContext context, int index) {
return ListTile(
leading:
Image.asset('assets/images/${listMenu[index].gambar}'),
title: Container(
padding: const EdgeInsets.only(bottom: 10),
child: Text(listMenu[index].nama)),
subtitle: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(listMenu[index].deskripsi),
Text("Rp. ${listMenu[index].harga}")
],
),
trailing: ElevatedButton(
child: const Text("Pesan"),
onPressed: () {
Navigator.push(
context,

MaterialPageRoute(
builder: (context) =>
PesanPage(pesananMenu: listMenu[index])));
},
),
);
}),
)
]),
);
}
}