import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//KEEPS TRACK OF WHAT THE USER IS TYPING
  final _textController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body:Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _textController,
                decoration: InputDecoration(
                    hintText: 'Enter your email address',
                    border:const OutlineInputBorder(),
                        suffixIcon: IconButton(
                          onPressed: (){
                            _textController.clear();
                          },
                          icon: Icon(Icons.clear),
                    )
                ),
                cursorColor: Colors.black,
              ),
              SizedBox(height: 16,),
              TextField(
                controller: _textController,
                decoration: InputDecoration(
                  hintText: 'Password',
                    border:const OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: (){
                          _textController.clear();
                        },
                      icon: Icon(Icons.clear),
                  )
                ),
                cursorColor: Colors.black,
              ),
              MaterialButton(
                onPressed: (){},
                color: Colors.indigo,
                child: const Text('Log In',
                    style:TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color:Colors.white,
                    )
                ),)
            ],
      )

      ) ,
    );
  }
}



