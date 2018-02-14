class C {
  var x;
  C() : x = null ?? <int, int>{} {}
}

main() {
  print(new C());
}