
import 'package:flutter/material.dart';
import '../screens/home/home.dart';
import '../screens/cadastro_produtos/cadastro_produtos.dart';
import '../screens/listar_produtos/listar_produtos.dart';
import '../screens/visualizar_produtos/visualizar_produtos.dart';

class AppRoutes {
  static const home = '/';
  static const cadastro = '/cadastro';
  static const listar = '/listar';
  static const visualizar = '/visualizar';

  static Map<String, WidgetBuilder> routes = {
    home: (_) => const HomeScreen(),
    cadastro: (_) => const CadastrarProdutos(),
    listar: (_) => const ListarProdutos(),
    visualizar: (_) => const VisualizarProdutos(),
  };
}
