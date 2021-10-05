class Users {
  String nama;
  String? email;
  String? alamat;
  String? pilihan;
  String imgpro;
  String? keluhan;
  int? noTelp;

  Users(
      {required this.nama,
      this.email,
      this.alamat,
      this.keluhan,
      this.pilihan,
      required this.imgpro,
      this.noTelp});
}
