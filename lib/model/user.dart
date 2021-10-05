class Users {
  String nama;
  String email;
  String alamat;
  String? pilihan;
  int noTelp;

  Users(
      {required this.nama,
      required this.email,
      required this.alamat,
      this.pilihan,
      required this.noTelp});
}
