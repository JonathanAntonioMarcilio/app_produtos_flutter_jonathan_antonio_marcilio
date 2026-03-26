import 'package:app_produtos_flutter_jonathan_antonio_marcilio/screens/cadastro_produtos/cadastro_produtos.dart';
import 'package:app_produtos_flutter_jonathan_antonio_marcilio/screens/listar_produtos/listar_produtos.dart';
import 'package:app_produtos_flutter_jonathan_antonio_marcilio/screens/visualizar_produtos/visualizar_produtos.dart';
import 'package:flutter/material.dart';
import '../../routes/app_routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _indice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('App Produtos')),
      body: IndexedStack(
        index: _indice,
        children: [
          const Center(child: Text('Tela Inicial')),
          CadastrarProdutos(),
          ListarProdutos(),
          VisualizarProdutos(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:_indice,
        onTap: (index) => setState(() =>  _indice = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue, 
        selectedItemColor: Colors.white, 
        unselectedItemColor: Colors.white70,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Cadastro'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Lista'),
          BottomNavigationBarItem(icon: Icon(Icons.visibility), label: 'visualizar'),
        ],
      ),
    );
  }
}