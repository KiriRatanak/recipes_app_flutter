import 'package:flutter/material.dart';
import 'package:recipes_app/ui/widgets/google_sign_in_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Text _buildText() {
      return Text(
        'Recipes',
        style: Theme.of(context).textTheme.headline,
        textAlign: TextAlign.center,
      );
    }

    BoxDecoration _buildBackground() {
      return BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/brooke_lark.jpg'),
          fit: BoxFit.cover
        )
      );
    }

    return Scaffold(
      body: Container(
        decoration: _buildBackground(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildText(),
              SizedBox(height: 50.0), //create space between text and button
              GoogleSignInButton(
                onPressed: () =>
                    Navigator.of(context).pushReplacementNamed('/'),
              )
            ],
          )
        )
      )
    );
  }
}
