import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1=0,num2=0;
  var sum=0;
  final TextEditingController t1=new TextEditingController(text:"0");
  final TextEditingController t2=new TextEditingController(text:"0");
  void doaddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }
    void dosubstraction(){
      setState(() {
        num1=int.parse(t1.text);
        num2=int.parse(t2.text);
        sum=num1 - num2;
      });
  }
  void domultiply(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1 * num2;
    });
  }
  void dodivide(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1 ~/ num2;
    });
  }
  void clear(){
    setState(() {
      num1=0;
      num2=0;
      t1.text="0";
      t2.text="0";
      sum=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("calc app")),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Output: $sum",
              style: TextStyle(fontSize: 20.0,color: Colors.deepPurple),),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter number 1",
                ),
                controller: t1,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Enter number 2"
                ),
                controller: t2,
              ),
              Padding(padding: EdgeInsets.all(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton( color:Colors.black,onPressed: doaddition, child:Text("+",style: TextStyle(color: Colors.white),),),
                  MaterialButton( color:Colors.black,onPressed: dosubstraction, child:Text("-",style: TextStyle(color: Colors.white),),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton( color:Colors.black,onPressed: domultiply, child:Text("*",style: TextStyle(color: Colors.white),),),
                  MaterialButton( color:Colors.black,onPressed: dodivide, child:Text("/",style: TextStyle(color: Colors.white),),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton( color:Colors.black,onPressed: clear, child:Text("Clear",style: TextStyle(color: Colors.white),),),

                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
