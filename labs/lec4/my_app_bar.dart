import 'package:flutter/material.dart';
import 'package:iti_training/resources/colorManager.dart';
import 'package:iti_training/resources/styleManager.dart';

class my_app_bar extends StatelessWidget implements PreferredSizeWidget {
  const my_app_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color_manage.appBarColor,
      title: Text('Aujourd\'hui', style: text_styles.centeredText),
      centerTitle: true,

/*----------------------------------------------------------------------------------------
TWo icons
*/
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.group_outlined)),
        IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
      ],
/*----------------------------------------------------------------------------------------
The orange Box
*/
      leading: Transform.translate(
        offset: Offset(20, 0), // move the box to right (because it's +ve) by 20
        child: Row(
          children: [
            Container(
              alignment: Alignment.center, // center the text vertically
                height: 30,
            width: 75,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(20),
            ),

              //center the text horizontally
              child: Text('1 644 w', style: text_styles.orangeBoxText,textAlign: TextAlign.center,),
                    ),
          ],
        ),
      ),
    );

  }

  @override
  Size get preferredSize => Size(double.infinity, 90);
}
