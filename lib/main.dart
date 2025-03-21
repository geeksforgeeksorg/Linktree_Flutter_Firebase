import 'package:flutter/material.dart';
import 'package:geeks_for_geeks/footer.dart';
import 'package:geeks_for_geeks/socialCard.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

// This widget is the root of your application.
@override
Widget build(BuildContext context) {
	return MaterialApp(
  debugShowCheckedModeBanner: false,
	title: 'Your Name',
	theme: ThemeData(
		colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
		useMaterial3: true,
	),
	home: const MyHomePage(),
	);
}
}

class MyHomePage extends StatefulWidget {
const MyHomePage({Key? key}) : super(key: key);

@override
State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
@override
Widget build(BuildContext context) {
	bool isDesktop = MediaQuery.of(context).size.width > 800;
	return Scaffold(
	body: Container(
		height: MediaQuery.of(context).size.height, // 100% of height
		width: MediaQuery.of(context).size.width, // 100% of width
		decoration: const BoxDecoration(
		gradient: LinearGradient(
			colors: [Color(0xff9dc9e9), Color(0xff2059ff)],
		),
		),
		child: Stack(
		children: [
			Column(
			mainAxisAlignment: MainAxisAlignment.spaceEvenly,
			children: [
				Expanded(
				child: Padding(
					padding: const EdgeInsets.only(top: 20.0),
					child: Center(
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
						children: const [
						CircleAvatar(
							radius: 80,
							backgroundImage: AssetImage('assets/profile.png'),
						),
						SizedBox(
							height: 5,
						),
						Text(
							'Your Name', // Your Name
							style: TextStyle(
							fontWeight: FontWeight.bold,
							fontSize: 28,
							),
						),
						SizedBox(
							height: 5,
						),
						Text(
							'Flutter Developer', // Your short bio (optional)
							style: TextStyle(
							fontWeight: FontWeight.w400,
							fontStyle: FontStyle.italic,
							fontSize: 20,
							),
						),
						],
					),
					),
				),
				),
				const SizedBox(
				height: 10,
				),
				Expanded(
				child: Container(
					// height: 490,
					width: MediaQuery.of(context).size.width,
					decoration: const BoxDecoration(
					color: Color(0xff171430),
					shape: BoxShape.rectangle,
					borderRadius: BorderRadius.vertical(
						top: Radius.circular(50.0),
					),
					),
					child: SingleChildScrollView(
					child: Column(
						children: [
						Center(
							child: isDesktop ? RowView() : ColumnView(),
						),
						Footer(),
						],
					),
					),
				),
				),
			],
			),
		],
		),
	),
	);
}

Column ColumnView() {
	return Column(
	mainAxisAlignment: MainAxisAlignment.center,
	children: [
		SizedBox(height: MediaQuery.of(context).size.height * 0.06),
		geeksforgeeks(),
		github(),
		gmail(),
    linkedin(),
		instagram(),
		playstore(),
		portfolio(),
		resume(),
		twitter(),
		whatsapp(),
		youtube(),
		SizedBox(height: MediaQuery.of(context).size.height * 0.05),
	],
	);
}

Row RowView() {
	return Row(
	mainAxisAlignment: MainAxisAlignment.center,
	crossAxisAlignment: CrossAxisAlignment.center,
	children: [
		Column(
		children: [
			SizedBox(
			height: MediaQuery.of(context).size.height * 0.05,
			),
			geeksforgeeks(),
			github(),
			gmail(),
			instagram(),
      playstore(),
		],
		),
		SizedBox(width: MediaQuery.of(context).size.width * 0.05),
		Column(
		children: [
			SizedBox(
			height: MediaQuery.of(context).size.height * 0.05,
			),
			
			portfolio(),
			resume(),
			twitter(),
			whatsapp(),
			youtube(),
		],
		),
		// Instagram
	],
	);
}
}
// import 'dart:ui' as ui;

// import 'package:flutter/material.dart';
// import 'package:flutter_cube/flutter_cube.dart';
// import 'dart:math' as math;

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyHomePage(
//         title: "Flutter 3D",
//       ),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, this.title}) : super(key: key);

//   final String? title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage>
//     with SingleTickerProviderStateMixin {
//   late Scene _scene;
//   Object? _moon;
//   Object? _moonObj;
//   Object? _moonObj1;
//   Object? _moonObj2;
//   late AnimationController _controller;

//   Future<Mesh> generateSphereMesh(
//       {num radius = 0.5,
//       int latSegments = 32,
//       int lonSegments = 64,
//       required String texturePath}) async {
//     int count = (latSegments + 1) * (lonSegments + 1);
//     List<Vector3> vertices = List<Vector3>.filled(count, Vector3.zero());
//     List<Offset> texcoords = List<Offset>.filled(count, Offset.zero);
//     List<Polygon> indices =
//         List<Polygon>.filled(latSegments * lonSegments * 2, Polygon(0, 0, 0));

//     int i = 0;
//     for (int y = 0; y <= latSegments; ++y) {
//       final double v = y / latSegments;
//       final double sv = math.sin(v * math.pi);
//       final double cv = math.cos(v * math.pi);
//       for (int x = 0; x <= lonSegments; ++x) {
//         final double u = x / lonSegments;
//         vertices[i] = Vector3(radius * math.cos(u * math.pi * 2.0) * sv,
//             radius * cv, radius * math.sin(u * math.pi * 2.0) * sv);
//         texcoords[i] = Offset(1.0 - u, 1.0 - v);
//         i++;
//       }
//     }

//     i = 0;
//     for (int y = 0; y < latSegments; ++y) {
//       final int base1 = (lonSegments + 1) * y;
//       final int base2 = (lonSegments + 1) * (y + 1);
//       for (int x = 0; x < lonSegments; ++x) {
//         indices[i++] = Polygon(base1 + x, base1 + x + 1, base2 + x);
//         indices[i++] = Polygon(base1 + x + 1, base2 + x + 1, base2 + x);
//       }
//     }

//     ui.Image texture = await loadImageFromAsset(texturePath);
//     final Mesh mesh = Mesh(
//         vertices: vertices,
//         texcoords: texcoords,
//         indices: indices,
//         texture: texture,
//         texturePath: texturePath);
//     return mesh;
//   }

//   void generateSphereObject(Object parent, String name, double radius,
//       bool backfaceCulling, String texturePath) async {
//     final Mesh mesh =
//         await generateSphereMesh(radius: radius, texturePath: texturePath);
//     parent
//         .add(Object(name: name, mesh: mesh, backfaceCulling: backfaceCulling));
//     _scene.updateTexture();
//   }

//   void _onSceneCreated(Scene scene) {
//     _scene = scene;
//     scene.camera.position.z = 80;
//     _moonObj = Object(
//         scale: Vector3(2.0, 2.0, 2.0),
//         backfaceCulling: false,
//         fileName: 'assets/moon.png');
//     _moonObj1 = Object(
//         scale: Vector3(-2.0, -2.0, -2.0),
//         backfaceCulling: false,
//         fileName: 'assets/moon.png');
//     _moonObj2 = Object(
//         scale: Vector3(2.0, 2.0, 2.0),
//         backfaceCulling: true,
//         fileName: 'assets/moon.png');
//     _moon = Object(name: 'moon', scale: Vector3(10, 10, 10));
//     generateSphereObject(_moon!, 'surface', 0.9, false, 'assets/moon.png');
//     _moonObj!.add(_moon!);
//     _moonObj1!.add(_moon!);
//     _moonObj2!.add(_moon!);
//     scene.world.add(_moonObj!);
//     scene.world.add(_moonObj1!);
//     scene.world.add(_moonObj2!);
//   }

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//         duration: Duration(milliseconds: 30000), vsync: this)
//       ..addListener(() {
//         if (_moon != null) {
//           _moon!.rotation.y = _controller.value * 360;
//           _moon!.updateTransform();
//           _scene.update();
//         }
//       })
//       ..repeat();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: Text(widget.title!),
//         centerTitle: true,
//         backgroundColor: Colors.green,
//         foregroundColor: Colors.white,
//       ),
//       body: Center(
//         child: Cube(
//           onSceneCreated: _onSceneCreated,
//         ),
//       ),
//     );
//   }
// }
