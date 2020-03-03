import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wan_bi_sika/src/constants/colors.dart';
import 'package:wan_bi_sika/src/constants/decorations.dart';
import 'package:wan_bi_sika/src/constants/paddings.dart';
import 'package:wan_bi_sika/src/core/widgets/buttons.dart';
import 'package:wan_bi_sika/src/features/app/bloc/app_bloc.dart';
import 'package:wan_bi_sika/src/features/app/bloc/app_state.dart';
import 'package:wan_bi_sika/src/features/auth/bloc/bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final textTheme = Theme.of(context).textTheme;
    return BlocBuilder<AppBloc, AppState>(builder: (context, appState) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: SizedBox(
          height: mq.size.height - kToolbarHeight,
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Container(
                width: mq.size.width,
                decoration: AppDecorations.card1,
                margin: AppPaddings.lH.copyWith(top: 16),
                padding: AppPaddings.mV,
                child: Column(children: <Widget>[
                  CircleAvatar(
                    radius: mq.size.width / 7,
                  ),
                  SizedBox(height: 8),
                  Divider(height: 8),
                  ProfileTile(
                    fieldKey: 'Name',
                    fieldValue: '${appState.currentUser.firstName} ${appState.currentUser.lastName}',
                  ),
                  Divider(height: 8),
                  ProfileTile(
                    fieldKey: 'Username',
                    fieldValue: '\$${appState.currentUser.userName}',
                  ),
                  Divider(height: 8),
                  ProfileTile(
                    fieldKey: 'Email',
                    fieldValue: '${appState.currentUser.email}',
                  ),
                  Divider(height: 8),
                  ProfileTile(
                    fieldKey: 'Authentication',
                    fieldValue: 'Google Sign In',
                  ),
                ]),
              ),
              Container(
                width: mq.size.width,
                decoration: AppDecorations.card1,
                margin: AppPaddings.lH.copyWith(top: 16),
                padding: AppPaddings.mA,
                child: Column(children: <Widget>[
                  SizedBox(height: 8),
                  LinkTile(
                    fieldKey: 'Our Website',
                    onPressed: () async {
                      var url = 'https://bitsika.africa';
                      await launch('$url');
                    },
                    fieldValue: 'https://bitsika.africa',
                  ),
                  Divider(height: 8),
                  LinkTile(
                    onPressed: () async {
                      var url = 'https://twitter.com/BitSikaAfrica';
                      await launch('$url');
                    },
                    fieldKey: 'Twitter',
                    fieldValue: 'https://twitter.com/BitSikaAfrica',
                  ),
                  Divider(height: 8),
                  LinkTile(
                    fieldKey: 'WhatsApp',
                  ),
                  Divider(height: 8),
                  LinkTile(
                    fieldKey: 'Telegram',
                  ),
                  Divider(height: 8),
                  LinkTile(
                    fieldKey: 'Contact Us',
                    onPressed: () async {
                      await launch('mailto://hi@bitsika.africa');
                    },
                  ),
                  Divider(height: 8),
                  LinkTile(
                    onPressed: () async {
                      var url = 'https://bitsika.africa/terms';
                      await launch('$url');
                    },
                    fieldKey: 'Terms & Conditions',
                  ),
                  Divider(height: 8),
                  LinkTile(
                    onPressed: () async {
                      var url = 'https://bitsika.africa/privacy';
                      await launch('$url');
                    },
                    fieldKey: 'Privacy Polocy',
                  ),
                ]),
              ),
              SizedBox(height: 50),
              SizedBox(
                width: 150,
                child: AppButton(
                  onPressed: () {
                    context.bloc<AuthBloc>().add(Deauthenticate());
                  },
                  child: Text(
                    'Log out',
                    style: textTheme.button.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 100),
            ]),
          ),
        ),
      );
    });
  }
}

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    Key key,
    this.fieldKey,
    this.fieldValue,
    this.onPressed,
  }) : super(key: key);

  final String fieldKey;
  final String fieldValue;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return FlatButton(
      onPressed: onPressed ?? () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '$fieldKey',
            style: textTheme.body1.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            fieldValue,
            style: textTheme.body1.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.hint,
            ),
          ),
        ],
      ),
    );
  }
}

class LinkTile extends StatelessWidget {
  const LinkTile({
    Key key,
    this.fieldKey,
    this.fieldValue,
    this.onPressed,
  }) : super(key: key);

  final String fieldKey;
  final String fieldValue;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return FlatButton(
      onPressed: onPressed ?? () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '$fieldKey',
                  style: textTheme.body1.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                if (fieldValue != null) SizedBox(height: 2),
                if (fieldValue != null)
                  Text(
                    fieldValue,
                    style: textTheme.caption.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppColors.hint,
                    ),
                  ),
              ],
            ),
          ),
          Icon(
            Icons.keyboard_arrow_right,
            color: AppColors.hint,
          )
        ],
      ),
    );
  }
}
