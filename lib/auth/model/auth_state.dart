import 'package:flutter/foundation.dart';
import 'dart:core';

import '../../post/typedefs/user_id.dart';

@immutable
class AuthState {
  final AuthState? result;
  final bool isLoading;
  final UserId? userId;

  const AuthState(
      {required this.result, required this.isLoading, required this.userId});

  const AuthState.unknown()
      : result = null,
        isLoading = false,
        userId = null;

  AuthState copiedIsLoading(bool isLoading) =>
      AuthState(result: result, isLoading: isLoading, userId: userId);

  @override
  bool operator == (covariant AuthState other) => (result == other.result && isLoading == other.isLoading && userId == other.userId);

  @override
  int get hashCode => Object.hash(result, isLoading, userId);

}
