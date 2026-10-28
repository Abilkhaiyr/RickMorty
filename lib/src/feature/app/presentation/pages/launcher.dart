import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/presentation/widgets/other/custom_loading_widget.dart';
import '../../bloc/app_bloc.dart';
import 'base.dart';

@RoutePage(name: 'LauncherRoute')
class Launcher extends StatefulWidget {
  const Launcher({super.key});
  @override
  State<Launcher> createState() => _LauncherState();
}

class _LauncherState extends State<Launcher> {
  @override
  void initState() {
    super.initState();
    context.read<AppBloc>().add(const AppEvent.start());
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<AppBloc, AppState>(
    builder: (context, state) => state.when(
      loading: () => const Scaffold(body: CustomLoadingWidget()),
      inApp: () => const BasePageStart(),
      error: (message) => Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(message),
              TextButton(
                onPressed: () =>
                    context.read<AppBloc>().add(const AppEvent.start()),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
