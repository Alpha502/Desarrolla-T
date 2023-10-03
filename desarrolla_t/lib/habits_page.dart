// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Habits extends StatelessWidget {
  const Habits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Habitos'),
      ),
      body:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Expanded(child:
                        Column(
                          children: [
                            const Text('habito 1'),
                            Image.network('https://www.modux.co/wp-content/uploads/2017/02/Anillos8-Tableau.png')
                          ],
                        ) 
                      ),
                      Expanded(child:
                        Column(
                          children: [
                            const Text('habito 2'),
                            Image.network('https://www.modux.co/wp-content/uploads/2017/02/Anillos8-Tableau.png')
                          ],
                        ) 
                      ),
                      Expanded(child:
                        Column(
                          children: [
                            const Text('habito 3'),
                            Image.network('https://www.modux.co/wp-content/uploads/2017/02/Anillos8-Tableau.png')
                          ],
                        ) 
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(child: 
                Padding(padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Text('Habito 1', textAlign: TextAlign.right),
                      Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMa24dOHX4vvomtBRaYhJZH2YtMCcL7wguzQ&usqp=CAU')
                    ],
                  )
                ),
              ),
              Expanded(child: 
                Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Habito 2', textAlign: TextAlign.right),
                    Image.network('https://cdn.exceltotal.com/wp-content/uploads/2012/03/crear-un-grafico-circular-con-subgrafico-08.png', scale:2, alignment: Alignment.center,)
                  ],
                ),
              ),
            ],
          ),
    );
  }
}
