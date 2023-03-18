// List.generate(100, (index)  {
//           return Column(
//             children: [
//               Text('Text $index'),
//               Divider(
//                 thickness: 10,
//               ),
//             ],
//           );
//         }),


//         ListView.separated(
//             itemBuilder: (context, index) {
//               return Text('Text $index');
//             },
//             separatorBuilder: (context, index) {
//               return Text("Seperator");
//             },
//             itemCount: 50)

//  ListView.builder(
//             itemBuilder: (context, index) {
//               return Text('Text $index');
//             },
//             itemCount: 50),