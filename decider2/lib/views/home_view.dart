import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override

  Widget _buildQuestionForm(){
    return Column(
      children: [
        Text(
          "Should I",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        TextField(
            decoration: InputDecoration(
              helperText: "Enter a Question",

            )
        ),
        ElevatedButton(
          onPressed: () {print(*clicked*);},
          child: Text("Ask"),
        )

      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Decider App"),
        backgroundColor: Colors.pinkAccent,
        actions: [

          Padding(
              padding: const EdgeInsets.only(right: 20.00),
              child:  GestureDetector(
                onTap: (){},
                child: Icon(
                  color: Colors.cyan,
                  Icons.shopping_bag,

                    ),
                  ),
    ),
          Padding(
              padding: const EdgeInsets.only(right: 20.00),

          child: GestureDetector(
            onTap: (){},
            child: Icon(
              color: Colors.white,
              Icons.history,

            )
          )
          )
        ],

      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Text("Decision Left: ##"),
              ),
              _buildQuestionForm()
            ], //Children
          ),
        )
      )
    );
  }
}

