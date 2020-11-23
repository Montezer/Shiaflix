import 'package:flutter/material.dart';
import 'package:myapp/cubits/cubits.dart';
import 'package:myapp/data/data.dart';
import 'package:myapp/widgets/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _scrollController;
  // double _scrollOffset = 0.0;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
       // setState(() {
         // _scrollOffset = _scrollController.offset;
       // });
        context.read<AppBarCubit>().setOffset(_scrollController.offset);
      });
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[900],
        child: const Icon(Icons.cast),
        onPressed: () => print('Cast'),

      ),
      // TV Screen cast button 
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 50.0),
        child: BlocBuilder<AppBarCubit, double>(
          builder: (context, scrollOffset){
         return CustomAppBar(scrollOffset: scrollOffset); 
        },
        ),
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
              child: ContentHeader(featuredContent: sanContent),
          ),
          SliverPadding(padding: const EdgeInsets.only(top: 20.0),
          sliver: SliverToBoxAdapter(
            child: Scholars(
            title: 'Scholars',
            contentList: scholars,
            ),
             ),
             ),
             SliverToBoxAdapter(
            child: LectureList(
              key: PageStorageKey('Favourite lectures'),
              title: 'Favourite lectures',
              contentList: favLec,
            ),
          ),
          SliverToBoxAdapter(
            child: LectureList(
              key: PageStorageKey('Muharram'),
              title: 'Muharram',
              contentList: muharram,
              muharram: true,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 20.0),
                      sliver: SliverToBoxAdapter(
              child: LectureList(
                key: PageStorageKey('Ramadhan'),
                title: 'Ramadhan',
                contentList: ramadhan,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
