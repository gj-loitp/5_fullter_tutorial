import 'package:flutter/widgets.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class GalleryExampleItem {
  GalleryExampleItem({
    required this.id,
    required this.resource,
    this.isSvg = false,
  });

  final String id;
  final String resource;
  final bool isSvg;
}

class GalleryExampleItemThumbnail extends StatelessWidget {
  const GalleryExampleItemThumbnail({
    Key? key,
    required this.galleryExampleItem,
    required this.onTap,
  }) : super(key: key);

  final GalleryExampleItem galleryExampleItem;

  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: GestureDetector(
        onTap: onTap,
        child: Hero(
          tag: galleryExampleItem.id,
          child: Image.network(galleryExampleItem.resource, height: 80.0),
        ),
      ),
    );
  }
}

List<GalleryExampleItem> galleryItems = <GalleryExampleItem>[
  GalleryExampleItem(
    id: "tag1",
    resource: "https://kenh14cdn.com/thumb_w/620/203336854389633024/2022/11/6/photo-4-16677111180281863259936.jpg",
  ),
  GalleryExampleItem(
      id: "tag2",
      resource: "https://kenh14cdn.com/thumb_w/620/203336854389633024/2022/11/6/photo-6-16677111281791568448463.jpg"),
  GalleryExampleItem(
    id: "tag3",
    resource: "https://kenh14cdn.com/thumb_w/620/203336854389633024/2022/11/6/photo-9-1667711144754229839920.png",
  ),
  GalleryExampleItem(
    id: "tag4",
    resource: "https://kenh14cdn.com/thumb_w/620/203336854389633024/2022/11/6/photo-8-1667711137977923479445.jpg",
  ),
  GalleryExampleItem(
    id: "tag5",
    resource: "https://kenh14cdn.com/thumb_w/620/203336854389633024/2022/11/6/photo-8-1667711137977923479445.jpg",
  ),
  GalleryExampleItem(
    id: "tag6",
    resource: "https://kenh14cdn.com/thumb_w/620/203336854389633024/2022/11/6/photo-4-16677111180281863259936.jpg",
  ),
  GalleryExampleItem(
    id: "tag7",
    resource: "https://kenh14cdn.com/thumb_w/620/203336854389633024/2022/11/6/photo-5-16677111235391948113511.jpg",
  ),
  GalleryExampleItem(
    id: "tag8",
    resource: "https://kenh14cdn.com/thumb_w/620/203336854389633024/2022/11/6/photo-8-1667711137977923479445.jpg",
  ),
];
