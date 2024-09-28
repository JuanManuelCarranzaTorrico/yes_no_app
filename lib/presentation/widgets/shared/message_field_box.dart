import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {

  final  ValueChanged<String> onValue ;
  const MessageFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();
    // final colors = Theme.of(context).colorScheme;
    final  outlineInputBorder =  UnderlineInputBorder(
      borderSide: const BorderSide( color: Colors.transparent ),
      borderRadius: BorderRadius.circular(20),
    );

    final inputDecoration = InputDecoration(
      hintText:'Termina tu mensaje con "?"',
      enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon:  IconButton(
          onPressed: (){
            final textValue = textController.value.text;
            onValue(textValue); 
            textController.clear();
          },
          icon: const Icon(Icons.send_outlined),
        )
    );
    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration:  inputDecoration, 
      onFieldSubmitted: (value){
        // print("Submit value $value");
        textController.clear();
        focusNode.requestFocus();
        onValue(value);
      },
    );
  }
}