import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class GroupedListContainer extends StatelessWidget {
  static const Map<String, String> GROUP_TITLES = {
    'a': 'Section A',
    'b': 'Section b',
    'c': 'Section c',
    'd': 'Section d',
  };

  final List elements = [
    {'title': '', 'group': '_'},
    {'title': 'Aardvark', 'group': 'a'},
    {'title': 'Avocet', 'group': 'a'},
    {'title': 'Bongo', 'group': 'b'},
    {'title': 'Binturong', 'group': 'b'},
    {'title': 'Collared Peccary', 'group': 'c'},
    {'title': 'Dugong', 'group': 'd'},
  ];

  @override
  Widget build(BuildContext context) {
    return GroupedListView<dynamic, String>(
      elements: elements,
      groupBy: (element) => element['group'],
      groupSeparatorBuilder: (String groupByValue) => _createGroupTitle(groupByValue),
      itemBuilder: (context, dynamic element) => _createListItem(element),
      itemComparator: (item1, item2) => item1['title'].compareTo(item2['title']),
      useStickyGroupSeparators: true,
      floatingHeader: true,
      order: GroupedListOrder.ASC,
    );
  }

  Widget _createListItem(dynamic element) {
    if (element['group'] == '_') {
      return SizedBox();
    }
    return Card(
      child: Text(element['title']),
    );
  }

  Widget _createGroupTitle(String groupByValue) {
    if (groupByValue == '_') {
      return SizedBox();
    }
    return Text(
      GROUP_TITLES[groupByValue] ?? '',
      style: TextStyle(color: Colors.red),
      textAlign: TextAlign.left,
    );
  }
}

class Item {
  final String title;
  final String group;
  Item({
    required this.title,
    required this.group,
  });
}
