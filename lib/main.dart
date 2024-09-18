import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: ResponsiveDashboard(),
    debugShowCheckedModeBanner: false,
  ));
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
   double screenWidth =  MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Dashboard'),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: [
          Container(
            width: screenWidth,
            margin: EdgeInsets.only(top: screenWidth > 600?10:15,bottom: screenWidth > 600?10:15),
            alignment: Alignment.center,
            child: Wrap(
              runSpacing:screenWidth > 600?10:12,
              spacing:screenWidth > 600?10:12 ,
              runAlignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: List.generate(200, (index) {
                return Container(
                   height: 100,
                   width: 100,
                  color: Colors.yellow,
                  alignment: Alignment.center,
                  child: Text('Item-${index+1}'),
                );
              }),
            ),
          ),
        ],
      )
    );
  }

}
