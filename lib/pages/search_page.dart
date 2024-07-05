import 'package:flutter/material.dart';
import '../widgets/search_bar.dart';
import '../widgets/category_buttons.dart';
import '../widgets/author_buttons.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('shelf')
        ,
      ),
      body: Container(
        color: Colors.white, // Set the background color here
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBarV2(),
            SizedBox(height: 16.0),
            CategoryButtons(),
            SizedBox(height: 16.0),
            AuthorButtons(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: '서치'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: '위시리스트'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '내정보'),
        ],
      ),
    );
  }
}
