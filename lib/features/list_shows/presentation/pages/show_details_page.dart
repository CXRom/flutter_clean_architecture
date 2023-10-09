import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/features/list_shows/presentation/providers/usecases.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShowDetailsPage extends ConsumerWidget {
  final int id;

  const ShowDetailsPage({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final show = ref.watch(getShowByIdUseCaseProvider(id));

    return Scaffold(
      appBar: AppBar(
        title: const Text('List Shows'),
      ),
      body: show.when(
          data: (value) {
            return Text(value.name);
          },
          error: (error, stackTrace) {
            return const Center(
              child: Text('Error'),
            );
          },
          loading: () => const Center(
                child: CircularProgressIndicator(),
              )),
    );
  }
}
