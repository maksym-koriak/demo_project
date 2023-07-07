import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_interngram_delta/common/app_colors/app_colors.dart';
import 'package:flutter_interngram_delta/core/presentation/routing/app_router.gr.dart';
import 'package:flutter_interngram_delta/core/presentation/wrappers/authorized_flow_wrapper/bloc/authorized_flow_bloc.dart';
import 'package:flutter_interngram_delta/features/auth/presentation/screens/gallery_image_picker_screen/gallery_image_picker_style_constants.dart';
import 'package:flutter_interngram_delta/features/user/domain/entities/user.dart';
import 'package:flutter_interngram_delta/common/app_icons/app_icons.dart';
import 'package:flutter_interngram_delta/features/auth/presentation/screens/sign_up_screen/set_profile/bio/bio_constants.dart';
import 'package:flutter_interngram_delta/features/user/presentation/screens/edit_screen/edit_screen_tab.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 4;

  late final List<Widget> _widgetOptions;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _widgetOptions = <Widget>[
      Center(
        child: ElevatedButton(
          onPressed: () {
            BlocProvider.of<AuthorizedFlowBloc>(context).add(
              const AuthorizedFlowEvent.signOut(),
            );
          },
          child: const Text(
            'Log Out',
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
      const Center(
        child: Text(
          'Search',
          style: TextStyle(fontSize: 40),
        ),
      ),
      const Center(
        child: Text(
          'Add post',
          style: TextStyle(fontSize: 40),
        ),
      ),
      const Center(
        child: Text(
          'Like',
          style: TextStyle(fontSize: 40),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<AuthorizedFlowBloc>(context).add(
      const AuthorizedFlowEvent.getCurrentUser(),
    );
    return BlocBuilder<AuthorizedFlowBloc, AuthorizedFlowState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return const Scaffold(
              body: Center(
                child: CupertinoActivityIndicator(
                  radius: initialLoadingIndicatorRadius,
                ),
              ),
            );
          },
          gotCurrentUser: (user) {
            _widgetOptions.add(EditScreenTab(user: user));

            return Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                items: <BottomNavigationBarItem>[
                  const BottomNavigationBarItem(
                    icon: Icon(
                      AppIcons.home,
                      size: 40,
                    ),
                    label: '',
                  ),
                  const BottomNavigationBarItem(
                    icon: Icon(AppIcons.search, size: 40),
                    label: '',
                  ),
                  const BottomNavigationBarItem(
                    icon: Icon(
                      AppIcons.add,
                      size: 40,
                    ),
                    label: '',
                  ),
                  const BottomNavigationBarItem(
                    icon: Icon(
                      AppIcons.heart,
                      size: 40,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                        decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all()),
                        child: CircleAvatar(
                            radius: 18,
                            backgroundColor: AppColors.textFieldBorder,
                            backgroundImage:
                                user.photo != null ? NetworkImage(user.photo!) : null)),
                    label: '',
                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.black,
                showUnselectedLabels: false,
                showSelectedLabels: false,
                onTap: _onItemTapped,
              ),
              body: _widgetOptions.elementAt(_selectedIndex),
            );
          },
          orElse: () {
            return const Scaffold(
              body: Center(
                child: CupertinoActivityIndicator(
                  radius: initialLoadingIndicatorRadius,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
