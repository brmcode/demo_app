// lib/features/auth/application/state/google_sign_in_state.dart

import 'package:google_sign_in/google_sign_in.dart';

sealed class GoogleSignInState {
  const GoogleSignInState();
}

class GoogleSignInInitializing extends GoogleSignInState {
  const GoogleSignInInitializing();
}

class GoogleSignInUnauthenticated extends GoogleSignInState {
  const GoogleSignInUnauthenticated();
}

class GoogleSignInAuthenticated extends GoogleSignInState {
  final GoogleSignInAccount user;
  const GoogleSignInAuthenticated(this.user);
}

class GoogleSignInLoading extends GoogleSignInState {
  const GoogleSignInLoading();
}

class GoogleSignInError extends GoogleSignInState {
  final String message;
  const GoogleSignInError(this.message);
}
