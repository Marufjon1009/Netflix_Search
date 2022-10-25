import 'package:flutter/material.dart';
import 'package:netflix_clone/model/search_model.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final searchController = TextEditingController();
  // ignore: non_constant_identifier_names

  // ignore: non_constant_identifier_names
  List display_list = [];

  void updateList(String value) {
    setState(() {
      display_list = main_movies_list
          .where((element) =>
              element.movie_title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: TextField(
          controller: searchController,
          onChanged: (value) {
            if (value.isEmpty) {
              display_list.clear();
              setState(() {});
            } else {
              updateList(value);
            }
          },
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              filled: true,
              fillColor: Colors.black,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none),
              hintText: "Search movies...",
              hintStyle: const TextStyle(color: Colors.grey)),
        ),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
                child: display_list.isEmpty
                    ? const Center(
                        child: Text(
                          'Now result found',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        itemCount: display_list.length,
                        itemBuilder: (context, index) => ListTile(
                              onTap: () {},
                              contentPadding: const EdgeInsets.all(8.0),
                              title: Text(
                                display_list[index].movie_title!,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                '${display_list[index].movie_release_year!}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              leading: Image.network(
                                display_list[index].movie_poster_url!,
                                height: 80,
                                width: 80,
                              ),
                            )))
          ],
        ),
      ),
    );
  }
}
