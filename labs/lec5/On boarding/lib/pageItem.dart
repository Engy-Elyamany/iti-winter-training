import 'package:flutter/material.dart';
import 'package:iti_training/pageData.dart';
import 'package:iti_training/resources/button_style.dart';
import 'package:iti_training/resources/colorManager.dart';
import 'package:iti_training/resources/imageManager.dart';
import 'package:iti_training/resources/styleManager.dart';

class pageItem extends StatelessWidget {
  final pageData pageD;

  const pageItem({super.key, required this.pageD});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
          padding: EdgeInsets.symmetric(vertical: 60, horizontal: 29),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
              SizedBox(
              height: 230,
              width: 250,
              child: Image.asset(pageD.image)),
          SizedBox(
            height: 50,
          ),
          Text(pageD.mainText,
              style: text_styles.title_style, textAlign: TextAlign.center),
          SizedBox(
            height: 30,
          ),
          Text(
              pageD.description,
              style: text_styles.description, textAlign: TextAlign.center
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            List.generate(3, (index) =>
              AnimatedContainer(
                margin: EdgeInsets.only(right: 10),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    color: color_manager.secondary_color,
                    shape: BoxShape.circle),
                duration: Duration(milliseconds: 300),
              ),
          ),),
      SizedBox(
        height: 30,
      ),
      SizedBox(
      width: 335,
      height: 60,
      child: ElevatedButton(
      onPressed: () {},
      style: button_style.primaryButton,
      child: Text(
      pageD.lastPage == true ? 'Get Started' : 'Register',
      style: text_styles.primaryButtonText,
      ),
      ),
      ),
      SizedBox(
      height: 15,
      ),
      SizedBox(
      width: 335,
      height: 60,
      child: OutlinedButton(
      onPressed: () {},
      child: Text('Log in',style: text_styles.secondaryButtonText,),
      style: button_style.secondaryButton,
      )),
      ],
      )
      ),
    );
  }
}
