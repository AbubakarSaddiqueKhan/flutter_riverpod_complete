import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_practice/initial_riverpod_simple_provider/providers.dart';

class SimpleProviderPageDesign extends ConsumerStatefulWidget {
  const SimpleProviderPageDesign({super.key, required this.title});

  final String title;

  @override
  ConsumerState<SimpleProviderPageDesign> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<SimpleProviderPageDesign> {
  @override
  Widget build(BuildContext context) {
    //  In the consumer stateful widget the ref comes as the property inside the build method of the consumer state .

    // According to the official documentation .
    // ref is used to reads a provider without listening to it.
    String personName = ref.read(nameProvider);
    String personCNICNumber = ref.read(cnicNumberProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Name : $personName"),
            Text("CINIC Number : $personCNICNumber"),
          ],
        ),
      ),
    );
  }
}
