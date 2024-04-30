import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';


class SignInDemo extends StatefulWidget {
  @override
  State createState() => SignInDemoState();
}

class SignInDemoState extends State<SignInDemo> {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  
  _handleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print('Error during Google Sign In: $error');
    }
  }

  _handleSignOut() async {
    try {
      await _googleSignIn.signOut();
    } catch (error) {
      print('Error during Google Sign Out: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Sign-In Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _handleSignIn,
              child: Text('Sign In with Google'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _handleSignOut,
              child: Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }
}
