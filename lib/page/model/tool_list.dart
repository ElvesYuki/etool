final toolList = <ToolObject>[
  ToolObject(1, 'redis', '1', 1),
  ToolObject(1, 'redis', '1', 2),
];

class ToolObject {
  int type;

  String title;

  String iconUrl;

  int sortNum;

  ToolObject(this.type, this.title, this.iconUrl, this.sortNum);
}
