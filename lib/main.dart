import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      title: 'Modul 6 - Form Validation',
      home: LoginPage(),
    ); 
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    if (_formKey.currentState!.validate()) {
      String username = usernameController.text;
      
      // Menambahkan perintah navigasi untuk pindah ke HomePage
      Navigator.push(
        context,
        MaterialPageRoute(
          // Mengirimkan data username ke file home.dart
          builder: (context) => HomePage(username: username),
        ),
      );

      // (Opsional) Memunculkan notifikasi sukses di bawah layar
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Login berhasil: $username")));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pertemuan 6 - Form Validation"),
        titleTextStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.teal,
      ), 
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            // Tambahkan ini agar tulisan merapat ke kiri
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text(
                "Halaman Login",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),


              TextFormField(
                controller: usernameController,
                decoration: const InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(),
                ), 
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Username wajib diisi";
                  }
                  if (value.length < 4) {
                    return "Username minimal 4 karakter";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 11),
              TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Password wajib diisi";
                  }
                  if (value.length < 6) {
                    return "Password minimal 6 karakter";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              // Agar tombol simpan memenuhi lebar layar atau rata tengah,
              // kita bungkus dengan Center jika crossAxisAlignment bernilai start
              Center(
                child: ElevatedButton(
                  onPressed: login,
                  child: const Text("Simpan"),
                ),
              ), 
            ],
          ), 
        ), 
      ), 
    ); 
  }
}