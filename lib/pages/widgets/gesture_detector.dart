import 'package:flutter/material.dart';

class GestureDetectorExample extends StatefulWidget {
  const GestureDetectorExample({Key? key}) : super(key: key);

  @override
  State<GestureDetectorExample> createState() => _GestureDetectorExampleState();
}

class _GestureDetectorExampleState extends State<GestureDetectorExample> {

  List<int> seats = [for(int i = 1; i <= 70; i++) i];
  List<Color> seatColors = [for(int i = 1; i <= 70; i++) Colors.transparent];
  List<bool> isSeatSelected = [for(int i = 1; i <= 70; i++) false];
  List<int> selectedSeats = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListView(
        children: [
          selectedSeats.isEmpty
              ? const Text('No seat selected', textAlign: TextAlign.center,) :
          Text('Selected Seats:\n ${selectedSeats.toString()}', textAlign: TextAlign.center,),
          const SizedBox(height: 50,),
          Wrap(
            spacing: 5,
            runSpacing: 5,
            alignment: WrapAlignment.spaceAround,
            children: [
              for(int index in seats)
                GestureDetector(
                  onTap: () {
                    if(!isSeatSelected[index-1]) {
                      if (selectedSeats.length >= 7){
                        ScaffoldMessenger.of(context).removeCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Sorry you can select only a maximum of 7 seats')));
                        print('seat $index can\'t be selected');
                      }
                      else {
                        setState(() {
                          seatColors[index-1] = const Color.fromRGBO(255, 128, 0, 0.5);
                          selectedSeats.add(index);
                          selectedSeats.sort();
                          isSeatSelected[index-1] = true;
                        });
                        print('seat $index selected');
                      }
                    }
                    else {
                      setState(() {
                        seatColors[index-1] = Colors.transparent;
                        selectedSeats.remove(index);
                        selectedSeats.sort();
                        isSeatSelected[index-1] = false;
                      });
                      print('seat $index unselected');
                    }
                  },
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        color: Theme.of(context).primaryColor,
                      ),
                      Container(
                        color: seatColors[index-1],
                        height: 45,
                        width: 45,
                      ),
                      Text('$index', style: const TextStyle(color: Colors.white),),
                    ],
                  ),
                )
            ],
          ),
        ],
      ),
    );
  }
}
