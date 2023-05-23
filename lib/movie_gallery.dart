import 'package:flutter/material.dart';

class MovieGallery extends StatelessWidget{
    const MovieGallery({Key?key}):super(key:key);
    
    //Criaremos um metoso a parte para criação de grid
    Widget _moviesGrid(BuildContext context){
        //Criaremos um grid com o tamanho definido 2 colunas
        return GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.fromLTRB(10,10,10,5),
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: _buildGridTileList(context, 10));
    }
    // Criaremos um outro metodo metodo que irá gerar os itens que serão exibidos
    List<InkWell>_buildGridTileList(BuildContext context, int count){
        //Para melhor visualização vamos colorir cada item com a cor diferente
      
       var _colors=[
        Colors.red,
        Colors.yellow,
        Colors.blue,
        Colors.orange,
        Colors.green,
        Colors.amber,
        Colors.grey,
        Colors.purple,
        Colors.pink,
        Colors.white
       ];
    //Geramos então a lista de 10 itens com cada cor
    return List.generate(//count, (i)=> Container(color: _colors[i]));
        count,
        (i)=> InkWell(
            child: Container(color: _colors[i]),
            //Cuidado chamar o onTap, que sempre deve estar dentro de alguma função.Caso contrario, ele irá irá chamar o método _openDetailPage ao renderizar o widget
            //onTap:()=> _openDetailPage(context, i),
            onTap: () => _openDetailPage(context, i),

        ));
    }

     _openDetailPage(BuildContext context, int index){
        //Vamos apenas executar o print para vermos no console se esta funcionando
        print("Cliquei: $index");
     }
   
   
   
   
   
    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                centerTitle:true,
                title: Text("Filmes em destaque")),
            body:  Container(
                color: Colors.black87,
                child: _moviesGrid(context)
            ),
        );
    }

}