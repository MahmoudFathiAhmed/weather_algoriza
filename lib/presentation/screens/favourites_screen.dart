import 'package:flutter/material.dart';
import 'package:weather_algoriza/core/utils/app_colors.dart';
import 'package:weather_algoriza/domain/entity/locations/locations.dart';
import 'package:weather_algoriza/presentation/components/user_dialog.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  List<Locations> locationsList = [];
  @override
  Widget build(BuildContext context) {
    void addLocationData(Locations locations){
      setState(() {
        locationsList.add(locations);
      });
    }
    void showLocationDialog(){
      showDialog(context: context, builder: (_){
        return  AlertDialog(
          content: UserDialog(addLocationData),
          elevation: 0,
          backgroundColor: AppColors.myDarkGrey,
          contentPadding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        );
      });

    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite Location'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showLocationDialog();
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: MediaQuery.of(context).size.height * .75,
          child: ListView.builder(
            itemCount: locationsList.length,
              itemBuilder: (context, index){
            return Card(
              child: ListTile(
                  title: Text(locationsList[index].location,),
                  textColor: Colors.pink,
              ),
            );
          }),
        ),
      ),
    );
  }
}
