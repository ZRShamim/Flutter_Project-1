import 'package:flutter/material.dart';


class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double sependingPctOfTotal;

  ChartBar(this.label, this.spendingAmount, this.sependingPctOfTotal);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        children: [
          Container(
            height: constraints.maxHeight * .15,
            child: FittedBox(child: 
              Text('\$${spendingAmount.toStringAsFixed(0)}')
            ),
          ),
          SizedBox(height:  constraints.maxHeight * .05,),
          Container(
            height: constraints.maxHeight * .6,
            width: 10,
              child: Stack(children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey, 
                      width: 1,
                    ),
                    color: Color.fromRGBO(220, 220, 220, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                FractionallySizedBox(
                  heightFactor: sependingPctOfTotal,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: constraints.maxHeight * .05,),
          Container(
            height:  constraints.maxHeight * 0.15,
            child: FittedBox(child: Text(label))
          ),
        ],
      );
    });
  }
}