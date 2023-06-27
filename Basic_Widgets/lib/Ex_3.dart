import 'package:flutter/material.dart';
import 'components/CustomButton.dart';
import 'components/textField.dart';

class Ex3LoginPage extends StatefulWidget {
  const Ex3LoginPage({super.key});

  @override
  _Ex3LoginPageState createState() => _Ex3LoginPageState();
}

class _Ex3LoginPageState extends State<Ex3LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _errorMessage = '';

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username == 'Admin' && password == 'Admin123') {
      setState(() {
        _errorMessage = '';
      });
    } else {
      setState(() {
        _errorMessage = 'Nhập sai username và password';
      });
    }
  }

  void _clear() {
    _usernameController.clear();
    _passwordController.clear();
    setState(() {
      _errorMessage = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomTextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  hintText: 'username',
                  hintStyle: TextStyle(fontStyle: FontStyle.italic),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                textInputAction: TextInputAction.next,
                onSubmitted: (String value) {},
                obscureText: false,
              ),
              const SizedBox(height: 16.0),
              CustomTextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  hintText: 'password',
                  hintStyle: TextStyle(fontStyle: FontStyle.italic),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                textInputAction: TextInputAction.next,
                onSubmitted: (String value) {
                  _login();
                },
                obscureText: true,
              ),
              const SizedBox(height: 32.0),
              Text(
                _errorMessage,
                style: const TextStyle(
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 32.0),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomButton(
                    onPressed: _login,
                    buttonStyle: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      minimumSize:
                          MaterialStateProperty.all<Size>(const Size(150, 50)),
                      side: MaterialStateProperty.all(
                          const BorderSide(color: Colors.blueGrey)),
                    ),
                    text: 'Login'),
                const SizedBox(width: 50.0),
                CustomButton(
                    onPressed: _clear,
                    buttonStyle: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      minimumSize:
                          MaterialStateProperty.all<Size>(const Size(150, 50)),
                      side: MaterialStateProperty.all(
                          const BorderSide(color: Colors.blueGrey)),
                    ),
                    text: 'Clear'),
              ]),
            ]),
          ),
        ),
      );
  }
}
