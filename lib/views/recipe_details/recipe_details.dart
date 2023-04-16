
import 'package:flutter/material.dart';
import 'package:recipes/model/Recipe.dart';
import 'package:recipes/views/widgets/recipe_details/ingridient_tile.dart';
import 'package:recipes/views/widgets/recipe_details/recipe_image.dart';
import 'package:recipes/views/widgets/recipe_details/recipe_info.dart';
import 'package:recipes/views/widgets/recipe_details/step_tile.dart';

import '../../AppColor.dart';
import '../../model/Result.dart';
class RecipeDetails extends StatefulWidget {
  final Result result;
  const RecipeDetails({required this.result ,Key? key}) : super(key: key);

  @override
  State<RecipeDetails> createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> with TickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;
  Color appBarColor = Colors.transparent;

  changeAppBarColor(ScrollController scrollController) {
    if (scrollController.position.hasPixels) {
      if (scrollController.position.pixels > 2.0) {
        setState(() {
          appBarColor = Colors.white;
        });
      }
      if (scrollController.position.pixels <= 2.0) {
        setState(() {
          appBarColor = Colors.transparent;
        });
      }
    } else {
      setState(() {
        appBarColor = Colors.transparent;
      });
    }
  }
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _scrollController = ScrollController(initialScrollOffset: 0.0);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AnimatedContainer(
          color: appBarColor,
          duration: Duration(milliseconds: 200),
          child: AppBar(
            backgroundColor: Colors.transparent,
            brightness: Brightness.dark,
            elevation: 0,
            centerTitle: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(16))
            ),
            title: Text(widget.result.name ?? "wothiutname", style: TextStyle(fontFamily: 'inter', fontWeight: FontWeight.w400, fontSize: 16),),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
              onPressed: (){Navigator.of(context).pop();},
            ),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.white))
            ],
          ),
        ),
      ),

      body: ListView(
        controller: _scrollController,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          RecipeImage(urlImage: widget.result.thumbnail_url ?? ""),
          RecipeInfo(result: widget.result),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            color: AppColor.secondary,
            child: TabBar(
              controller: _tabController,
              onTap: (index) {
                setState(() {
                  _tabController.index = index;
                });
              },
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black.withOpacity(0.6),
              labelStyle: TextStyle(fontFamily: 'inter', fontWeight: FontWeight.w500),
              indicatorColor: Colors.black,
              tabs: [
                Tab(
                  text: 'Ingridients',
                ),
                Tab(
                  text: 'Tutorial',
                ),

              ],
            ),
          ),
          // IndexedStack based on TabBar index
          IndexedStack(
            index: _tabController.index,
            children: [
              ListView.builder(
                shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: widget.result.sections?[0].components.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index){
                    return IngridientTile(
                      data: widget.result.sections?[index].components[index],
                    );
                  }),
              ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: widget.result.instructions?.length ,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return StepTile(
                    data: widget.result.instructions?[index],
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
