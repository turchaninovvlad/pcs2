import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Authorization'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Центрируем содержимое по вертикали
          children: <Widget>[
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(labelText: 'Login'),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Действие при нажатии кнопки "Войти"
              },
              child: Text('Войти'),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                // Действие при нажатии кнопки "Регистрация"
              },
              child: Text('Регистрация'),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Действие при нажатии кнопки "Восстановить пароль"
              },
              child: Text('Восстановить пароль'),
            ),
          ],
        ),
      ),
    );
  }
}

