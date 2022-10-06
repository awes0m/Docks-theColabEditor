import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../colors.dart';
import '../repositiory/auth_repository.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  void signInWithGoogle(WidgetRef ref) {
    ref.watch(authRepositoryProvider).signInWithGoogle();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: Center(
      child: ElevatedButton.icon(
        onPressed: () => signInWithGoogle(ref),
        icon: const Icon(
          Icons.golf_course_sharp,
          size: 20,
          color: kBlackColor,
        ),
        label: const Text('Sign in with Google',
            style: TextStyle(color: kBlackColor)),
        style: ElevatedButton.styleFrom(
          backgroundColor: kWhiteColor,
          minimumSize: const Size(150, 50),
        ),
      ),
    ));
  }
}
