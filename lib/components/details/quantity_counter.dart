import 'package:flutter/material.dart';
import 'package:ultimate_furniture_app_ui_kit/components/details/counter_button.dart';
import 'package:ultimate_furniture_app_ui_kit/utils/colors/colors.dart';

class QuantityCounter extends StatefulWidget {
  const QuantityCounter({super.key});

  @override
  _QuantityCounterState createState() => _QuantityCounterState();
}

class _QuantityCounterState extends State<QuantityCounter> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    setState(() {
      if (_count > 1) {
        _count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 125,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Quantity:', style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: AppColors.kBlackColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontFamily: 'LeagueSpartan',
          ),),
          const SizedBox(height: 6),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CounterButton(onTap: _decrement, icon: Icons.remove,),
              Container(
                width: 35,
                height: 35,
                alignment: Alignment.center,
                child: Text('$_count', style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: AppColors.kBlueColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'LeagueSpartan',
                ),),
              ),
              CounterButton(onTap: _increment, icon: Icons.add,),
            ],
          ),
        ],
      ),
    );
  }
}


