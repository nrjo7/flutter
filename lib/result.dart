import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final int resultScore;
  Result(this.resultScore);
   String get resultPhrase{
     String resultText;
    if(resultScore<=8){
      resultText='You are awesome and innocent !!!';
    }
    else if(resultScore<=12){
      resultText='You are pretty likable';
    }else if(resultScore<=16){
      resultText='You are strange fellow!?';
    }
    else{
      resultText='You are bad!';
    }
    return resultText;
  }
 
  @override
  Widget build(BuildContext context){
    return Center(
                child: Text(resultPhrase, style:TextStyle(fontSize:36, fontWeight:FontWeight.bold)), 
              );
  }
}