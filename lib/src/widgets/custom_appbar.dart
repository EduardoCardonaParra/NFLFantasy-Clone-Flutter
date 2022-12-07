import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nfl_fantasy_project/src/themes/theme.dart';


class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final maxAppBarSize = size.height *.10;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: size.width,
      height: maxAppBarSize,
      color: primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _AppBarButton(
            maxAppBarSize: maxAppBarSize,
            icon: FontAwesomeIcons.gear,
          ),
          const Image(
            fit: BoxFit.contain,
            image: AssetImage('assets/images/logo.jpeg')
          ),
          _AppBarButton(
            maxAppBarSize: maxAppBarSize,
            isText: true,
          )
          
        ],
        
      ),
    );
  

}

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBarButton extends StatelessWidget {
  final IconData icon;
  final double maxAppBarSize;
  final bool isText;

  const _AppBarButton({
    Key? key,
    
    this.icon = FontAwesomeIcons.gear,
    required this.maxAppBarSize,
    this.isText =false
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 50,
      height: maxAppBarSize *.55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0XFF07C3E7)
      ),
      child: isText ? const Text('GP>',
        style: TextStyle(
          color: Color(0XFF011D40),
          fontWeight: FontWeight.w800,
          fontSize: 20
        ),
      )
      
        : IconButton(
        icon: const Icon(FontAwesomeIcons.gear),
        onPressed: (){},
      ),
      
    );
  }
}