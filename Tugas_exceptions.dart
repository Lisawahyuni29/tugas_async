void main() async {
  print("BANK");
  print("Selamat datang, ada yang bisa kami bantu");
  print("Nasabah menyerahkan data diri");
  print("Cv menawarkan beberapa opsi kepada nasabah");
  try {
    await Nasabah("Tabungan");
    print("Pembuat tabungan");
  } catch (error) {
    print(error);
  }
}

Future<void> Nasabah(String pengajuan) async {
  List<String> opsi = ["Simpedes", "Tabunganku", "Debit"];
  print(opsi);
  if (opsi.contains(pengajuan)) {
    return Future.delayed(Duration(seconds: 5), () {
      print("process successful");
    });
  } else {
    throw ("sorry, process failed");
  }
}

Future<String> createOrderMessage() async {
  var Nasabah = await fetchUserOrder();
  return "Hasil dari :  $Nasabah";
}

Future<String> fetchUserOrder() {
  return Future.delayed(Duration(seconds: 5), () {
    return 'Sudah Mengajukan';
  });
}
