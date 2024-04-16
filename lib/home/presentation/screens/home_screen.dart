import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mad_soft/home/data/repository/home_repo_impl.dart';
import 'package:mad_soft/home/presentation/bloc/home_bloc.dart';
import 'package:mad_soft/home/presentation/widgets/card_of_object.dart';
import 'package:mad_soft/home/presentation/widgets/custom_bottom_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final HomeBloc _bloc;

  final TextEditingController _textController = TextEditingController();

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
    return Scaffold(
      backgroundColor: const Color(0xFFEAEFFF),
      body: BlocBuilder<HomeBloc, HomeState>(
        bloc: _bloc,
        builder: (context, state) {
          return Padding(
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
                  flexibleSpace: FlexibleSpaceBar(
                    titlePadding: EdgeInsets.zero,
                    centerTitle: false,
                    expandedTitleScale: 1.2,
                    title: const Align(
                      alignment: Alignment.centerLeft,
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
                    background: Align(
                      alignment: Alignment.bottomLeft,
                      child: TextFormField(
                        controller: _textController,
                        onChanged: (value) {
                          _bloc.add(SearchEvent(query: value));
                        },
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            )),
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
                        CardOfObject(
                      responsePayload: state.payloadSearchList[index],
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
          );
        },
      ),
      bottomNavigationBar: const CustomBottomBar(),
    );
  }
}
