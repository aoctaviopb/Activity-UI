import 'package:flutter/material.dart';



class FrameLayoutOne extends StatelessWidget {
  const FrameLayoutOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      color: Colors.tealAccent,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            height: 200.0,
            width: 200.0,
            color: Colors.red,
          ),
          Container(
            height: 150.0,
            width: 150.0,
            color: Colors.blue,
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.green,
          ),
          Container(
            height: 50.0,
            width: 50.0,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}



class FrameLayoutTwo extends StatelessWidget {
  const FrameLayoutTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //constraints: const BoxConstraints.expand(),
      color: Colors.tealAccent,
      child: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Container(
              height: 200.0,
              width: 200.0,
              color: Colors.red,
            ),
          ),
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: Container(
              height: 150.0,
              width: 150.0,
              color: Colors.blue,
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomStart,
            child: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.green,
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Container(
              height: 50.0,
              width: 50.0,
              color: Colors.yellow,
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width/3,//300,
            top: 150,
            child: Container(
              height: 200,
              width: 300,
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}
