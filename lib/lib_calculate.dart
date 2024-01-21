String calculate(String operationId, double angkaPertama, double angkaKedua) {
  switch (operationId) {
    case "tambah":
      return "$angkaPertama + $angkaKedua = ${(angkaPertama + angkaKedua).toStringAsFixed(3)}";
    case "kurang":
      return "$angkaPertama - $angkaKedua = ${(angkaPertama - angkaKedua).toStringAsFixed(3)}";
    case "kali":
      return "$angkaPertama * $angkaKedua = ${(angkaPertama * angkaKedua).toStringAsFixed(3)}";
    case "bagi":
      return "$angkaPertama / $angkaKedua = ${(angkaPertama / angkaKedua).toStringAsFixed(3)}";
    case "modulus":
      return "$angkaPertama % $angkaKedua = ${(angkaPertama % angkaKedua).toStringAsFixed(3)}";
    default:
      return "";
  }
}
