import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mad_soft/home/data/repository/home_repo_impl.dart';
import 'package:mad_soft/home/presentation/bloc/home_bloc.dart';
import 'package:mad_soft/home/presentation/widgets/plan_card.dart';
import 'package:mad_soft/home/presentation/widgets/search_line.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.diskTotalSpace,
  });

  final String diskTotalSpace;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HomeBloc _bloc;

  @override
  void initState() {
    super.initState();

    _bloc = HomeBloc(context.read<HomeRepo>());
    _bloc.add(GetPayloadListEvent());
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: BlocBuilder<HomeBloc, HomeState>(
        bloc: _bloc,
        builder: (context, state) {
          return switch (state.status) {
            HomeBlocStates.initial =>
              const Center(child: CircularProgressIndicator()),
            HomeBlocStates.loading =>
              const Center(child: CircularProgressIndicator()),
            HomeBlocStates.error => const Center(child: Text('Error')),
            HomeBlocStates.success => Padding(
                padding: const EdgeInsets.all(16),
                child: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      pinned: true,
                      snap: true,
                      floating: true,
                      stretch: true,
                      surfaceTintColor: const Color(0xFFEAEFFF),
                      expandedHeight: 124,
                      flexibleSpace: const FlexibleSpaceBar(
                        titlePadding: EdgeInsets.zero,
                        centerTitle: false,
                        expandedTitleScale: 1.2,
                        title: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(top: 12),
                            child: Text(
                              'Объекты',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto',
                                color: Color(0xFF1B1B1F),
                              ),
                            ),
                          ),
                        ),
                        background: Align(
                          alignment: Alignment.bottomLeft,
                          child: SizedBox(
                            height: 55,
                            child: SearchLine(),
                          ),
                        ),
                      ),
                      backgroundColor: const Color(0xFFEAEFFF),
                      actions: [
                        Center(
                          child: IconButton(
                            iconSize: 25,
                            color: Colors.black,
                            icon: const Icon(Icons.info_outline),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.only(top: 16),
                      sliver: SliverList.separated(
                        itemBuilder: (BuildContext context, int index) =>
                            PlanCard(
                          planEntity: state.payloadSearchList[index],
                          diskTotalSpace: widget.diskTotalSpace,
                        ),
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(
                          height: 12,
                        ),
                        itemCount: state.payloadSearchList.length,
                      ),
                    ),
                  ],
                ),
              ),
          };
        },
      ),
    );
  }
}
