import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:cleantdd/presentation/presentation.dart';
import 'package:flutter/material.dart';

class ContinentPage extends StatelessWidget {
  const ContinentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold<ContinentBloc>(
      title: Text('Continent Detail'),
      body: ContinentMainWidget(),
      loadData: (bloc) => bloc?.add(OnGetContinent(code: 'SA')),
    );
  }
}

class ContinentMainWidget extends StatelessWidget {
  const ContinentMainWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ContinentBloc, ContinentState>(
      listener: (context, state) {
        if (state is ContinentError && state.message.isNotEmpty) {
          Fluttertoast.showToast(msg: state.message);
        }
      },
      builder: (context, state) {
        if (!(state is ContinentData)) {
          return SizedBox();
        }
        return Center(
          child: Column(
            children: [
              Text(
                state.continent.name ?? '',
              )
            ],
          ),
        );
      },
    );
  }
}
