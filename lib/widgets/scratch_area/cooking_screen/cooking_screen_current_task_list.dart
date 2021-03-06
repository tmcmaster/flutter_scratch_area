import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CookingScreenCurrentTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const numberOfCurrentTasks = 3;

    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 10),
              color: Colors.white,
              child: Text(
                'CURRENT TASK',
                style: theme.textTheme.headline3,
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
          //decoration: BoxDecoration(border: Border.all(color: theme.colorScheme.primary)),
          color: theme.colorScheme.primaryVariant,
          child: Column(
            children: [
              ...Iterable.generate(numberOfCurrentTasks)
                  .map((i) => Container(
                        decoration: BoxDecoration(
                          color: (i == 0
                              ? Colors.white
                              : Colors.white.withOpacity(0.5 - (i / (numberOfCurrentTasks * 2)))),
                          borderRadius: BorderRadius.all(
                            Radius.circular(7),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(2, 0, 0, 2),
                        child: ListTile(
                          selected: (i == 0),
                          enabled: i > 0,
                          tileColor: theme.colorScheme.primaryVariant,
                          selectedTileColor: Colors.white,
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'item ${i + 1}',
                                style: theme.textTheme.bodyText1!.copyWith(color: Colors.black),
                              ),
                              TextButton(
                                onPressed: () => {},
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: theme.colorScheme.primaryVariant, width: 3),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                  ),
                                  child: Text('Done'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ))
                  .toList(),
            ],
          ),
        ),
      ],
    );
  }
}
