import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/features/list_shows/presentation/pages/show_details_page.dart';
import 'package:flutter_clean_architecture/features/list_shows/presentation/providers/usecases.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ListShowsPage extends HookConsumerWidget {
  const ListShowsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchState = useState("");
    final listShowsProvider =
        ref.watch(getShowsUseCaseProvider(searchState.value));

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: (value) {
            searchState.value = value;
          },
          decoration: const InputDecoration(
            hintText: 'Search...',
            prefixIcon: Icon(
              Icons.search,
            ),
          ),
        ),
      ),
      body: listShowsProvider.when(
          data: (value) {
            return ListView.builder(
              itemCount: value.length,
              itemBuilder: (context, index) {
                final item = value[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text(item.type),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ShowDetailsPage(id: item.id)),
                  ),
                );
              },
            );
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
