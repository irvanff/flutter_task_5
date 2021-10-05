class Users {
  String nama;
  String email;
  String alamat;
  String? pilihan;
  String imgpro;
  String? keluhan;
  int noTelp;

  Users(
      {required this.nama,
      required this.email,
      required this.alamat,
      this.keluhan,
      this.pilihan,
      required this.imgpro,
      required this.noTelp});
}
