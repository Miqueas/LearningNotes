import "package:flutter/material.dart";

const appTitle = "Flutter OpenBootcamp";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Material(
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime? _date;

  Future<void> doShowDatePicker() async {
    _date = await showDatePicker(
      context: context,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      initialDate: DateTime.now(),
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var template = (_date == null)
      ? "Aún no has seleccionado una fecha"
      : "Fecha seleccionada: ${_date?.day}/${_date?.month}/${_date?.year}";

    return Scaffold(
      appBar: AppBar(
        title: const Text("DatePicker"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: doShowDatePicker,
              child: const Text("Seleccionar fecha")
            ),
          ),
          Center(
            child: Text(template)
          ),
        ]
      ),
    );
  }
}