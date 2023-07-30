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
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitCircle(color: Theme.of(context).primaryColor,)),
                  const Text('Circle', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitChasingDots(color: Theme.of(context).primaryColor,)),
                  const Text('Chasing Dots', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitCubeGrid(color: Theme.of(context).primaryColor,)),
                  const Text('Cube Grid', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitDancingSquare(color: Theme.of(context).primaryColor,)),
                  const Text('Dancing Square', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitDoubleBounce(color: Theme.of(context).primaryColor,)),
                  const Text('Double Bounce', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitDualRing(color: Theme.of(context).primaryColor,)),
                  const Text('Dual Ring', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitFadingFour(color: Theme.of(context).primaryColor,)),
                  const Text('Fading Four', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitFadingGrid(color: Theme.of(context).primaryColor,)),
                  const Text('Fading Grid', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitFadingCircle(color: Theme.of(context).primaryColor,)),
                  const Text('Fading Circle', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitFadingCube(color: Theme.of(context).primaryColor,)),
                  const Text('Fading Cube', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitFoldingCube(color: Theme.of(context).primaryColor,)),
                  const Text('Folding Cude', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitHourGlass(color: Theme.of(context).primaryColor,)),
                  const Text('Hour Glass', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitPianoWave(color: Theme.of(context).primaryColor,)),
                  const Text('Piano Wave', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitPouringHourGlass(color: Theme.of(context).primaryColor,)),
                  const Text('Pouring Hour Glass', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitPouringHourGlassRefined(color: Theme.of(context).primaryColor,)),
                  const Text('Pouring Hour Glass Refined', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitPulse(color: Theme.of(context).primaryColor,)),
                  const Text('Pulse', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children: const [
                  Expanded(child: SpinKitPumpingHeart(color: Colors.red,)),
                  Text('Pumping Heart', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitRing(color: Theme.of(context).primaryColor,)),
                  const Text('Ring', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitRipple(color: Theme.of(context).primaryColor,)),
                  const Text('Ripple', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitRotatingCircle(color: Theme.of(context).primaryColor,)),
                  const Text('Rotating Circle', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitRotatingPlain(color: Theme.of(context).primaryColor,)),
                  const Text('Rotating Plain', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitSpinningCircle(color: Theme.of(context).primaryColor,)),
                  const Text('Spinning Circle', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitSpinningLines(color: Theme.of(context).primaryColor,)),
                  const Text('Spinning Lines', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitSquareCircle(color: Theme.of(context).primaryColor,)),
                  const Text('Square Circle', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitThreeBounce(color: Theme.of(context).primaryColor,)),
                  const Text('Three Bounce', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitThreeInOut(color: Theme.of(context).primaryColor,)),
                  const Text('Three In Out', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitWanderingCubes(color: Theme.of(context).primaryColor,)),
                  const Text('Wandering Cubes', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
              Container(width: 100, height: 100,decoration: BoxDecoration(border: Border.all(width: 2, color: Theme.of(context).primaryColor),),child: Center(child: Column(
                children:  [
                  Expanded(child: SpinKitWave(color: Theme.of(context).primaryColor,)),
                  const Text('Wave', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ))),
            ],
          ),
        ],
      ),
    );
  }
}
