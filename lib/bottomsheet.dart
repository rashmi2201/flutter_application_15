import 'package:flutter/material.dart';

class ListItem {
  final String name;
  final String logoPath;
  final Color color;

  ListItem(this.name, this.logoPath, this.color);
}

List<ListItem> dataList = [
  ListItem(
    "The first 20 hours -- how to learn...\nTEDx Talks\n3.3 crore views. 10 years ago",
    'assets/pen.jpg',
    const Color.fromARGB(255, 255, 255, 255),
  ),
  ListItem(
    "A R I Z O N A - Nostalgic [Official  \nMusic Vedio]",
    'assets/book.jpg',
    const Color.fromARGB(255, 255, 255, 255),
  ),
  ListItem(
    "Siege of Adoni ✗ Bahmani- \nVijayanagara Empire Conflict(pa.... ",
    'assets/coco.jpg',
    const Color.fromARGB(255, 255, 255, 255),
  ),
];

class MyBottomSheet extends StatelessWidget {
  final List<ListItem> items;

  const MyBottomSheet(this.items, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Text(
                "Doc . 1/135",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const Row(
            children: [
              Text('Nature Wallpaper'),
              Icon(
                Icons.lock,
                size: 18,
              ),
              Spacer(),
              Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.wrong_location,
                  size: 18,
                ),
              ),
            ],
          ),  
          const SizedBox(width: 20),
          Row(
            children: [
              Icon(Icons.loop, size: 18),
              SizedBox(width: 10),
              const Icon(
                Icons.shuffle,
                size: 18,
              ),
              Spacer(),
              PopupMenuButton<String>(
                itemBuilder: (BuildContext context) {
                  return ['Option 1', 'Option 2', 'Option 3']
                      .map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();
                },
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.separated(
            shrinkWrap: true,
            itemCount: items.length,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 20);
            },
            itemBuilder: (BuildContext context, int index) {
              final item = items[index];
                  if (index == 0 || index == 1 || index == 2) {
                  return Container(
                    color: Color.fromARGB(255, 220, 217, 218),
                    child: ListTile(
                      dense: false,
                      title: Row(
                        children: [
                          const Icon(Icons.vertical_distribute_sharp,
                              size: 24),
                          const SizedBox(width: 16),
                          Image.asset(
                            item.logoPath,
                            width: 100,
                            height: 100,
                          ),
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.name,
                                style: const TextStyle(),
                              ),
                              const SizedBox(height: 6),
                              const Row(
                                children: [
                                  Icon(Icons.thumb_up, color: Color.fromARGB(255, 16, 19, 16)),
                                  SizedBox(width: 6),
                                  Icon(Icons.thumb_down, color: Color.fromARGB(255, 20, 17, 17)),
                                  SizedBox(width: 6),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: PopupMenuButton<String>(
                        itemBuilder: (BuildContext context) {
                          return ['Option 1', 'Option 2', 'Option 3']
                              .map((String choice) {
                            return PopupMenuItem<String>(
                              value: choice,
                              child: Text(choice),
                            );
                          }).toList();
                        },
                      ),
                      tileColor: item.color,
                    ),
                  );
                }

                return ListTile(
                  dense: false,
                  title: Row(
                    children: [
                      Image.asset(
                        item.logoPath,
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.name,
                            style: const TextStyle(),
                          ),
                          const SizedBox(height: 6),
                          const Row(
                            children: [
                              Icon(Icons.thumb_up, color: Color.fromARGB(255, 12, 15, 12)),
                              SizedBox(width: 6),
                              Icon(Icons.thumb_down, color: Color.fromARGB(255, 8, 7, 7)),
                              SizedBox(width: 6),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  trailing: PopupMenuButton<String>(
                    itemBuilder: (BuildContext context) {
                      return ['Option 1', 'Option 2', 'Option 3']
                          .map((String choice) {
                        return PopupMenuItem<String>(
                          value: choice,
                          child: Text(choice),
                        );
                      }).toList();
                    },
                  ),
                  tileColor: item.color,
                );
              },
            ),
          ],
        ),
      );
  }
}
