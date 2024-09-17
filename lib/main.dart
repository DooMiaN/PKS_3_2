import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ЭФБО-03-22',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    bool reMe = false;
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(title: const Text('Zopa')
      // ),


      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          
          // Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9FIL6yqt47xa0K8gc1YJ6t5preiSOzrnvbQ&s'),

          Padding(
            padding: const EdgeInsets.only(bottom: 200),
            child: const Text(
              'Авторизация',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,

                ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(decoration: InputDecoration(
              hintText: 'Логин',
              filled: true,
              contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide.none,
              ),
            ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(decoration: InputDecoration(
              hintText: 'Пароль',
              filled: true,
              contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide.none,
              ),
            ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center, // Центрирование содержимого
            children: [
              Checkbox(
                value: reMe,
                onChanged: null,
              ),
              const Text(
                'Запомнить меня',
                style: TextStyle(
                    color: Colors.grey, // Цвет, как у "Восстановить пароль"
                    fontSize: 16
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text('Войти', style: TextStyle(fontSize: 16, color: Colors.white), ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: const BorderSide(color: Colors.blue, width: 2),
                ),
              ),
              child: const Text('Регистрация', style: TextStyle(fontSize: 16, color: Colors.blue), ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Восстановить пароль',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


