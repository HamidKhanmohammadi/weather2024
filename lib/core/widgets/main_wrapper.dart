import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather2024/features/feature_weather/presentation/bloc/cw_status.dart';

import '../../features/feature_weather/presentation/bloc/home_bloc.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    BlocProvider.of<HomeBloc>(context).add(LoadCurretWeatherEvent("Tehran"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<HomeBloc,HomeState>(
        builder: (context, state){
          if(state.cwStatus is CwLoading){
            return const Center(child: Text("Loading...."),);
          }
          if(state.cwStatus is CwCompleted){
            return const Center(child: Text("Complited...."),);
          }
          if(state.cwStatus is CwError){
            return const Center(child: Text("error...."),);
          }

          return Container();
        },
      ),
    );
  }
}
