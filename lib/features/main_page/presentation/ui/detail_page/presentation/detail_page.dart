import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/service/di/injection_container.dart';
import 'package:rick_and_morty/core/theme/colors_app.dart';
import 'package:rick_and_morty/features/main_page/presentation/ui/detail_page/presentation/state/detail_cubit.dart';
import 'package:rick_and_morty/features/main_page/presentation/ui/detail_page/presentation/state/detail_cubit_state.dart';

@RoutePage()
class CharacterDetailPage extends StatelessWidget {
  final int characterId;

  const CharacterDetailPage({super.key, required this.characterId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DetailCubit>(
      create: (context) => getIt<DetailCubit>()..loadDetail(characterId),
      child: Scaffold(
        body: BlocBuilder<DetailCubit, DetailState>(
          builder: (context, state) {
            return state.when(
              initial: () {
                return Center(child: Text("Waiting"));
              },
              loading: () {
                return Center(child: CircularProgressIndicator());
              },
              success: (success) {
                return CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      expandedHeight: 400,
                      pinned: true,
                      // backgroundColor: const Color(0xFF16213E),
                      leading: Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.primaryButtonColor(context),
                            width: 1,
                          ),
                          color: AppColors.borderColor2(context),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,

                            color: AppColors.primaryButtonColor(context),
                          ),
                          onPressed: () => context.router.pop(),
                        ),
                      ),
                      flexibleSpace: FlexibleSpaceBar(
                        background: Stack(
                          fit: StackFit.expand,
                          children: [
                            Hero(
                              tag: 'character_${success.id}',
                              child: CachedNetworkImage(
                                imageUrl: success.image,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.transparent,
                                    const Color(0xFF1A1A2E).withAlpha(150),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 20,
                              right: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    success.name,
                                    style: const TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    children: [
                                      _buildStatusIndicator(success.status),
                                      const SizedBox(width: 8),
                                      Text(
                                        "${success.status}-${success.species}",
                                        style: const TextStyle(
                                          color: Colors.white70,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Content
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Info Cards
                            _buildInfoCard(
                              icon: Icons.person,
                              title: 'Gender',
                              value: success.gender,
                              color: Colors.blue,
                            ),
                            const SizedBox(height: 12),
                            _buildInfoCard(
                              icon: Icons.public,
                              title: 'Origin',
                              value: success.origin.name,
                              color: Colors.purple,
                            ),
                            const SizedBox(height: 12),
                            _buildInfoCard(
                              icon: Icons.location_on,
                              title: 'Last Known Location',
                              value: success.location.name,
                              color: Colors.orange,
                            ),
                            if (success.type.isNotEmpty)
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: _buildInfoCard(
                                  icon: Icons.category,
                                  title: 'Type',
                                  value: success.type,
                                  color: Colors.green,
                                ),
                              ),

                            const SizedBox(height: 30),

                            // Episodes Section
                            const Text(
                              'Episodes',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              'Appeared in ${success.episode.length} episodes',
                              style: const TextStyle(fontSize: 16),
                            ),
                            const SizedBox(height: 16),
                            _buildEpisodesGrid(success.episode),

                            const SizedBox(height: 20),

                            // Additional Info
                            _buildAdditionalInfo(success.created),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
              error: (error) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
                      child: Text(error),
                    ),
                    SizedBox(height: 30),
                    MaterialButton(
                      height: 50,
                      minWidth: 250,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: AppColors.borderColor2(context),
                      onPressed: () {
                        context.router.pop();
                      },
                      child: Text("BACK"),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildStatusIndicator(String status) {
    Color color;
    switch (status.toLowerCase()) {
      case 'alive':
        color = Colors.green;
        break;
      case 'dead':
        color = Colors.red;
        break;
      default:
        color = Colors.grey;
    }

    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: color.withAlpha(128),
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    required String title,
    required String value,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        // color: const Color(0xFF16213E),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withAlpha(77), width: 1),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withAlpha(51),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: color, size: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 14)),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEpisodesGrid(List<dynamic> episodes) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 1.2,
      ),
      itemCount: episodes.length,
      itemBuilder: (context, index) {
        final episodeNumber = episodes[index].toString().split('/').last;
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: AppColors.textAppBarColor(context).withAlpha(155),
              width: 1,
            ),
          ),
          child: Center(
            child: Text(
              episodeNumber,
              style: const TextStyle(
                // color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildAdditionalInfo(String created) {
    final date = DateTime.parse(created);
    final formattedDate = '${date.day}/${date.month}/${date.year}';

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF16213E).withAlpha(128),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withAlpha(25), width: 1),
      ),
      child: Row(
        children: [
          const Icon(Icons.calendar_today, color: Colors.white60, size: 20),
          const SizedBox(width: 12),
          Text(
            'Created: $formattedDate',
            style: const TextStyle(color: Colors.white60, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
