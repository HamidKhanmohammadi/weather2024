import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather2024/features/feature_weather/domain/domain_entities/current_city_entity.dart';
import 'package:weather2024/features/feature_weather/presentation/bloc/cw_status.dart';

import '../../features/feature_bookmark/presentation/screen/bookmark_screen.dart';
import '../../features/feature_weather/presentation/bloc/home_bloc.dart';
import '../../features/feature_weather/presentation/screen/home_screen.dart';
import 'app_background.dart';
import 'bottom_nav.dart';


class MainWrapper extends StatelessWidget {
  MainWrapper({Key? key}) : super(key: key);

  final PageController pageController = PageController(initialPage: 0);


  @override
  Widget build(BuildContext context) {

    List<Widget> pageViewWidget = [
      const HomeScreen(),
      BookMarkScreen(pageController: pageController,),
    ];

    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BottomNav(Controller: pageController),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AppBackground.getBackGroundImage(),
              fit: BoxFit.cover
          ),
        ),
        height: height,
        child: PageView(
          controller: pageController,
          children: pageViewWidget,
        ),
      ),
    );
  }
}
// class MainWrapper extends StatefulWidget {
//   const MainWrapper({super.key});
//
//   @override
//   State<MainWrapper> createState() => _MainWrapperState();
// }
//
// class _MainWrapperState extends State<MainWrapper> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//
//     BlocProvider.of<HomeBloc>(context).add(LoadCurretWeatherEvent("Tehran"));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: BlocBuilder<HomeBloc,HomeState>(
//         builder: (context, state){
//           if(state.cwStatus is CwLoading){
//             return const Center(child: Text("Loading...."),);
//           }
//           if(state.cwStatus is CwCompleted){
//
//             final CwCompleted cwCompleted = state.cwStatus as CwCompleted;
//             final CurrentCityEntity currentCityEntity = cwCompleted.currentCityEntity;
//             return Center(child: Text(currentCityEntity.name.toString(),),);
//           }
//           if(state.cwStatus is CwError){
//             return const Center(child: Text("error...."),);
//           }
//
//           return Container();
//         },
//       ),
//     );
//   }
// }
