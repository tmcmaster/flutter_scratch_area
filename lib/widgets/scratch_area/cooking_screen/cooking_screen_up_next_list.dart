import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CookingScreenUpNext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(30, 10, 0, 40),
              color: Colors.white,
              child: Text(
                'UP NEXT',
                style: theme.textTheme.headline3!.copyWith(color: Colors.grey[300]),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              color: Colors.white,
              child: Text(
                'Gathering ingredients',
                style: theme.textTheme.subtitle1,
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
          //decoration: BoxDecoration(border: Border.all(color: theme.colorScheme.primary)),
          color: Colors.white,
          child: Column(
            children: [
              ...Iterable.generate(5)
                  .map((i) => Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[(i < 1 ? 200 : (i < 2 ? 100 : 50))],
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(2, 0, 0, 2),
                        child: ListTile(
                          selected: (i == 0),
                          enabled: i > 0,
                          tileColor: Colors.grey,
                          selectedTileColor: Colors.white,
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'item ${i + 1}',
                                style: theme.textTheme.bodyText1!.copyWith(color: Colors.grey),
                              ),
                              TextButton(
                                onPressed: () => {},
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey.shade400, width: 2),
                                    color: Colors.grey.shade50,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                  ),
                                  child: Text('Done',
                                      style: theme.textTheme.headline3!.copyWith(
                                        color: Colors.grey.shade400,
                                      )),
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
