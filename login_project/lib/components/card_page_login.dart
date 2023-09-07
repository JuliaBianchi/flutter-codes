import 'package:flutter/material.dart';

class CardLoginPage extends StatelessWidget {
  const CardLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 400,
        width: deviceSize.width * 0.80,
        child: Form(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'E-mail'),
                keyboardType: TextInputType.emailAddress,
              ),

              TextField(
                decoration: InputDecoration(labelText: 'Password'),
                keyboardType: TextInputType.visiblePassword,
              ),

              ElevatedButton(
                onPressed: () {
                  print('Pressionado');
                },
                child: Text('ENTRAR'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
