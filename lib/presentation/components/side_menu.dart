import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_algoriza/core/utils/app_colors.dart';
import 'package:weather_algoriza/core/utils/app_strings.dart';
import 'package:weather_algoriza/core/utils/values_manager.dart';
import 'package:weather_algoriza/presentation/components/default_%20button.dart';
import 'package:weather_algoriza/presentation/controller/Theme/theme_cubit.dart';

class SideMenu extends StatelessWidget {
  final String headerImage;
  final double width;
  final double radius;

  const SideMenu({
    Key? key,
    required this.headerImage,
    this.width = AppSize.s304,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeCubit theme = BlocProvider.of<ThemeCubit>(context, listen: false);
    return Drawer(
      width: width,
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p5),
          child: Column(
            children: [
              DrawerHeader(
                child: Image.asset(
                  headerImage,
                  fit: BoxFit.cover,
                ),
              ),
              DrawerListTile(
                title: AppStrings.favouriteLocation,
                icon: Icons.star,
                press: () {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //WRAP WITH THEME
                  Theme(
                    data: ThemeData(
                        iconTheme: IconThemeData(
                          color: AppColors.offWhite,
                          size: AppSize.s18,
                        )
                    ),
                    child: const Icon(
                      Icons.location_on,
                    ),
                  ),
                  const SizedBox(width: AppSize.s5),
                  Text(
                    'Ashmun'.toUpperCase(),
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(width: AppSize.s60),
                  CircleAvatar(
                    backgroundColor: AppColors.myAmber,
                    radius: AppSize.s8,
                  ),
                  const SizedBox(width: AppSize.s5),
                  Text(
                    '38°',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
              DrawerListTile(
                title: AppStrings.otherLocations,
                icon: Icons.add_location_outlined,
                press: () {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Theme(
                    data: ThemeData(
                      iconTheme: IconThemeData(
                        color: AppColors.offWhite,
                        size: AppSize.s18,
                      )
                    ),
                    child: const Icon(
                      Icons.location_on,),
                  ),
                  const SizedBox(width: AppSize.s5),
                  Text(
                    'Ashmun'.toUpperCase(),
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(width: AppSize.s60),
                  CircleAvatar(
                    backgroundColor: AppColors.myAmber,
                    radius: AppSize.s8,
                  ),
                  const SizedBox(width: AppSize.s5),
                  Text(
                    '38°',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
              const SizedBox(height: AppSize.s10,),
              DefaultButton(
                  backgroundColor: AppColors.myDarkBlue.withOpacity(AppSize.s0_6),
                  text: AppStrings.manageLocation,
                  // textColor: AppColors.offWhite,
                  onclick: (){},
                  borderRadius: AppSize.s20,
                  // fontWeight: FontWeight.w400,
                  height: AppSize.s40,
                width: AppSize.s190,
              ),
              DrawerListTile(
                title: AppStrings.reportWrongLocation,
                icon: Icons.report_outlined,
                press: () {},
              ),
              DrawerListTile(
                title: AppStrings.contactUs,
                icon: Icons.headset_mic_outlined,
                press: () {},
              ),
              DrawerListTile(
                title: AppStrings.changeTheme,
                icon: Icons.light_mode_outlined,
                press: () {
                  theme.changeTheme();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.press,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      style: ListTileStyle.drawer,
      leading: Icon(icon),
      title: Text(
        title,
        //TITLE SMALL
        style: Theme.of(context).textTheme.titleSmall,
      ),
      horizontalTitleGap: AppSize.s0,
      onTap: press,
    );
  }
}
