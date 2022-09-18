abstract class AuthRepositry {
  Future SignUpWithEandp({required String email, required String password});
  Future SignInWithEandP({required String email, required String password});
}
