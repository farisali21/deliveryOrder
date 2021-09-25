import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../controller.dart';
import 'bottom_bar.dart';
import 'google_map_file.dart';


class ChooseLocationBody extends StatefulWidget {
  const ChooseLocationBody({Key? key}) : super(key: key);

  @override
  _ChooseLocationBodyState createState() => _ChooseLocationBodyState();
}

class _ChooseLocationBodyState extends State<ChooseLocationBody> {
  @override
  Widget build(BuildContext context) {
    var blocController = ChooseMapController.of(context);
    return Container(
        child: Column(
          children: const [
            Expanded(
              flex: 4,
              child: GoogleMapFile(),
            ),
            Expanded(
              flex: 1,
              child: BottomBar(),
            )
          ],
        )
    );
  }
}
