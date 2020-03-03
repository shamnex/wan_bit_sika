import 'package:flutter/material.dart';
import 'package:wan_bi_sika/src/features/auth/screens/pin_code/pin_input_bloc/pin_code_bloc.dart';
import 'package:wan_bi_sika/src/features/auth/screens/pin_code/pin_input_bloc/pin_code_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PinKeyPad extends StatelessWidget {
  const PinKeyPad({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                _PinKey(1),
                _PinKey(2),
                _PinKey(3),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                _PinKey(4),
                _PinKey(5),
                _PinKey(6),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                _PinKey(7),
                _PinKey(8),
                _PinKey(9),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Spacer(),
                Expanded(child: _PinKey(0)),
                Expanded(
                  child: FlatButton(
                    child: Icon(
                      Icons.backspace,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      context.bloc<PinCodeBloc>().add(PinDeleted());
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PinKey extends StatelessWidget {
  final int input;
  const _PinKey(
    this.input, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        context.bloc<PinCodeBloc>().add(PinEntered(input));
      },
      child: Text(
        '$input',
        style: Theme.of(context).textTheme.body2.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Colors.white,
            ),
      ),
    );
  }
}
