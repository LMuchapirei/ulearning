import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning/app_blocs.dart';
import 'package:ulearning/app_states.dart';
import 'package:ulearning/app_events.dart';
import 'package:ulearning/pages/signin/sign_in.dart';
import 'package:ulearning/pages/welcome/bloc/welcome_blocs.dart';
import 'package:ulearning/pages/welcome/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => WelcomeBloc(),
          ),
          BlocProvider(
            create: (context) => AppBlocs(),
          ),
        ],
        child: ScreenUtilInit(
            builder: (contex, child) => MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                theme: ThemeData(
                  appBarTheme: const AppBarTheme(
                      elevation: 0, backgroundColor: Colors.white),
                  colorScheme:
                      ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                  useMaterial3: true,
                ),
                routes: {
                  'myHomePage': (context) => const MyHomePage(),
                  SignIn.routeName: (context) => const SignIn()
                },
                home: const Welcome())));
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("uLearning"),
      ),
      body: Center(
        child: BlocBuilder<AppBlocs, AppStates>(builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                /// optionally we can access the state as follows BlocProvider.of(AppBlocs>(context).state.counter)
                '${state.counter}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          );
        }),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              heroTag: "HEROTAG1",
              onPressed: () {
                /// Optionally we could also make a call as follows
                /// BlocProvider.of<AppBloc>(context).add(IncrementEvent())
                context.read<AppBlocs>().add(IncrementEvent());
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              heroTag: "HEROTAG2",
              onPressed: () {
                /// Optionally we could also make a call as follows
                /// BlocProvider.of<AppBloc>(context).add(DecrementEvent())
                context.read<AppBlocs>().add(DecrementEvent());
              },
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
