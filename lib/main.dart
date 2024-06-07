import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:money_minder/home_page_notifier.dart';

void main() {
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homePageNotifierProvider);
    final notifier = ref.read(homePageNotifierProvider.notifier);
    final prevState = usePrevious(state);

    useEffect(
      () {
        if (prevState != state && state is AsyncError) {
          // dialog
        }
        return null;
      },
      [state],
    );

    final Widget widget;
    if (state is AsyncData) {
      widget = Column(
        children: [
          Text('name = ${state.value?.name ?? ''}'),
          Text('date = ${state.value?.date ?? ''}'),
        ],
      );
    } else if (state is AsyncLoading) {
      widget = const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      widget = const Text('error');
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('title'),
      ),
      body: widget,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          notifier.refreshData();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
