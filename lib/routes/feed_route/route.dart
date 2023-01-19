import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_test/cubits/feed/cubit.dart';
import 'package:video_test/cubits/feed/state.dart';
import 'package:video_test/helpers/snackbars.dart';
import 'package:video_test/widgets/feed.dart';

class FeedRoute extends StatelessWidget {
  final String id = "feed_route";
  const FeedRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: BlocListener<FeedCubit, FeedState>(
          listener: (context, state) {
            if (state is FeedError) {
              if (state.message != null) {
                Snackbars.showError(context, state.message!);
              }
            }
          },
          child: BlocBuilder<FeedCubit, FeedState>(
            builder: (context, state) {
              if (state is FeedsLoaded || (state.feeds?.isNotEmpty ?? false)) {
                return RefreshIndicator(
                  onRefresh: () async {
                    await context.read<FeedCubit>().refresh();
                  },
                  child: ListView.builder(
                    itemCount: state.feeds!.length,
                    itemBuilder: (context, index) {
                      return FeedWidget(
                        feed: state.feeds![index],
                        onFavourite: (bool isFavourite) {
                          context.read<FeedCubit>().updateFavourite(index, isFavourite);
                        },
                      );
                    },
                  ),
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
    );
  }
}
