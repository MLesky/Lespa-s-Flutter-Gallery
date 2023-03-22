import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class FlutterSpinkitExample extends StatelessWidget {
  const FlutterSpinkitExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.spaceBetween,
            children: [
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitCircle(color: Colors.indigo,)),
                  Text('Circle', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitChasingDots(color: Colors.indigo,)),
                  Text('Chasing Dots', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitCubeGrid(color: Colors.indigo,)),
                  Text('Cube Grid', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitDancingSquare(color: Colors.indigo,)),
                  Text('Dancing Square', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitDoubleBounce(color: Colors.indigo,)),
                  Text('Double Bounce', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitDualRing(color: Colors.indigo,)),
                  Text('Dual Ring', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitFadingFour(color: Colors.indigo,)),
                  Text('Fading Four', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitFadingGrid(color: Colors.indigo,)),
                  Text('Fading Grid', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitFadingCircle(color: Colors.indigo,)),
                  Text('Fading Circle', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitFadingCube(color: Colors.indigo,)),
                  Text('Fading Cube', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitFoldingCube(color: Colors.indigo,)),
                  Text('Folding Cude', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitHourGlass(color: Colors.indigo,)),
                  Text('Hour Glass', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitPianoWave(color: Colors.indigo,)),
                  Text('Piano Wave', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitPouringHourGlass(color: Colors.indigo,)),
                  Text('Pouring Hour Glass', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitPouringHourGlassRefined(color: Colors.indigo,)),
                  Text('Pouring Hour Glass Refined', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitPulse(color: Colors.indigo,)),
                  Text('Pulse', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitPumpingHeart(color: Colors.red,)),
                  Text('Pumping Heart', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitRing(color: Colors.indigo,)),
                  Text('Ring', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitRipple(color: Colors.indigo,)),
                  Text('Ripple', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitRotatingCircle(color: Colors.indigo,)),
                  Text('Rotating Circle', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitRotatingPlain(color: Colors.indigo,)),
                  Text('Rotating Plain', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitSpinningCircle(color: Colors.indigo,)),
                  Text('Spinning Circle', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitSpinningLines(color: Colors.indigo,)),
                  Text('Spinning Lines', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitSquareCircle(color: Colors.indigo,)),
                  Text('Square Circle', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitThreeBounce(color: Colors.indigo,)),
                  Text('Three Bounce', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitThreeInOut(color: Colors.indigo,)),
                  Text('Three In Out', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitWanderingCubes(color: Colors.indigo,)),
                  Text('Wandering Cubes', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.indigo.shade900),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitWave(color: Colors.indigo,)),
                  Text('Wave', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
            ],
          ),
        ],
      ),
    );
  }
}
