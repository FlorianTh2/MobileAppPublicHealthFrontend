import 'package:flutter/material.dart';
import 'package:mobile_health/cubit/cubit/counter_cubit.dart';
import 'package:mobile_health/cubit/cubit/general_cubit.dart';
import 'package:mobile_health/cubit/state/general_state.dart';
import 'package:mobile_health/database/database_provider.dart';
import 'package:mobile_health/models/EntryType.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestBottomFloatingButton extends StatefulWidget {
  @override
  _TestBottomFloatingButtonState createState() =>
      _TestBottomFloatingButtonState();
}

class _TestBottomFloatingButtonState extends State<TestBottomFloatingButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      // color: Colors.grey,
      padding: EdgeInsets.only(top: 50),
      height: size.height / 4,
      width: size.width / 4,
      child: FittedBox(
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          shape: CircleBorder(
              side: BorderSide(
            color: Color.fromARGB(255, 101, 220, 213),
            width: 5,
          )),
          child: BlocBuilder<GeneralCubit, GeneralState>(
            builder: (context, state) {
              return Text(
                state.navItemSelected.toString(),
                style: TextStyle(
                  color: Colors.black45,
                ),
              );
            },
          ),
          elevation: 0.0,
          onPressed: () => context.read<GeneralCubit>().selectSelectedNavBarItem(2), //context.read<GeneralCubit>().increment(),
        ),
      ),
    );
  }
}
