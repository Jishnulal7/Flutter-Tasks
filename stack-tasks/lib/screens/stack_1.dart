import 'package:flutter/material.dart';

class TaskOne extends StatelessWidget {
  const TaskOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          title: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Stack Overflow'),
          ),
          actions: const [Icon(Icons.arrow_back_ios)],
        ),
        body: Center(
          child: Stack(alignment: Alignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                // color: Colors.red,
                decoration: BoxDecoration(
                  
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [BoxShadow(blurRadius: 20)],
                    color: Colors.white),
                height: 200,
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30),
                    const Text(
                      'Jishnulal',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Mankada,Kerala',
                          style: TextStyle(
                            color: Colors.black,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: SizedBox(
                        height: 75,
                        width: 250,
                        // color: Colors.white,
                        child: Row(children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: const [
                              Text(
                                'Purchased',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '12K',
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: const [
                              Text('Wished',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                '12K',
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: const [
                              Text('Likes',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                '12K',
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          )
                        ]),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 230),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration:  BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(25),
                      boxShadow: const [BoxShadow(blurRadius: 10),],
                      color: Colors.white),
                    
                  child: const Icon(
                    Icons.person,
                    
                  ),
                ),
              ),
            )
          ]),
        ));
  }
}
