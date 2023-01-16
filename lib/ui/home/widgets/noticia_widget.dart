import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../data/models/user/user_model.dart';

class NoticiaWidget extends StatelessWidget {
  final UserModel noticia;
  final Function onTap;


  const NoticiaWidget(
      {Key? key,
      required this.noticia,
      required this.onTap,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
      },
      onLongPress: () {
      },
      onTap: () {
        onTap(noticia);
      },
      
      child: Container(
      
        padding: const EdgeInsets.all(10.0),
        height: 80.0,

        child: Row(
       
          
          children: <Widget> [
            
            
            Expanded(
              flex: 1,
              child: Container(
                height: 12.0,
                
              ),
              
            ),
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Name : ${noticia.author}', style: fromTextStyle),
                   Text('Beneficios :${noticia.content}', style: subjectTextStyle),
                  Text('Tipo : ${noticia.title}',
                      style: fromTextStyle),
                 
                ],
              ),
            )
       
          ],
        ),
      ),
    );
  }
}
