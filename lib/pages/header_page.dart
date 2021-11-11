import 'package:flutter/material.dart';

class HeaderCurvo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,      
      child: CustomPaint(
        painter: _HeaderCurvoPainter(),        
      ),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    
    var rect = Offset.zero & size;
    final paint= Paint();
    paint.color= Color(0xffADEAEA);    
    paint.style= PaintingStyle.fill; //.fill .stroke
    paint.strokeWidth= 5;
    paint.shader=LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [Colors.purpleAccent, Colors.blue]).createShader(rect);

    final path = Path();
//Dibujar con el path y el paint
    // path.moveTo(0, size.height*0.35);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width*0.85, size.height, size.width, size.height*0.70);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
    
  }

}