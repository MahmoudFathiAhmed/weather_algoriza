import 'package:flutter/material.dart';
import 'package:weather_algoriza/core/utils/app_colors.dart';
import 'package:weather_algoriza/domain/entity/locations/locations.dart';
import 'package:weather_algoriza/presentation/components/DefaultTextFormField.dart';
import 'package:weather_algoriza/presentation/components/default_%20button.dart';

class UserDialog extends StatefulWidget {
  const UserDialog(this.addLocations,{Key? key,}) : super(key: key);
  final Function(Locations) addLocations;
  @override
  State<UserDialog> createState() => _UserDialogState();
}

class _UserDialogState extends State<UserDialog> {

  @override
  Widget build(BuildContext context) {
    var locationController = TextEditingController();
    return Container(
      decoration: BoxDecoration(
      color: AppColors.myDarkGrey,
        borderRadius: BorderRadius.circular(20)
      ),
      padding: const EdgeInsets.all(8),
      height: 170,
      width: 400,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Text('Add Location'),
            const SizedBox(height: 10,),
            DefaultTextFormField(
                // label: 'add location',
                radius: 30,
                type: TextInputType.text,
                controller: locationController,
                validation: 'No location Entered',
                borderColor: Colors.black,
                fillColor: Colors.white70,
                isFilled: true,
            ),
            const SizedBox(height: 10,),
            DefaultButton(
                backgroundColor: AppColors.myDarkBlue,
                text: 'add a location',
                onclick: (){
                  final location = Locations(locationController.text);
                  widget.addLocations(location);
                  Navigator.pop(context);
                },
                borderRadius: 30,
                height: 50)
          ],
        ),
      ),
    );
  }
}
