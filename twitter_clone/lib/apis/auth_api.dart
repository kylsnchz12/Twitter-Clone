import 'package:appwrite/appwrite.dart';

import 'package:twitter_clone/core/type_defs.dart';

abstract class IAuthAPI {
  FutureEither<Account> signUp({
    required String email,
    required String password,
  });
}

// class AuthAPI implements IAuthAPI {
//   final Account _account;

//   @override
//   FutureEither<Account> signUp(
//       {required String email, required String password}) async {}
// }
