import 'package:fl_query/fl_query.dart';
import 'package:flutter/material.dart';
import 'package:infinite_query_bug/infinite_query.dart';

void main() async {
  await QueryClient.initialize(cachePrefix: 'fl_query_example');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return QueryClientProvider(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const InfiniteQueryPageWidget(),
      ),
    );
  }
}
