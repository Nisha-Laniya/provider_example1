import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/providers/count_provider.dart';

class CountExample extends StatelessWidget {
  const CountExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CounterProvider>(context,listen: false);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Count Example'),

      ),
      body: Center(
        child: Consumer<CounterProvider>(
          builder: (context, value, child) {
            return  Text(
              countProvider.counter.toString(),
              style: TextStyle(fontSize: 50),
            );
          },
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
