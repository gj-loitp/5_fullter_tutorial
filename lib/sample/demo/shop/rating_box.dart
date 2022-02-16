import 'package:flutter/material.dart';

typedef RatingBoxCallBack = void Function(int rating);

class RatingBox extends StatefulWidget {
  final int? rating;
  final RatingBoxCallBack _ratingBoxCallBack;

  RatingBox(this.rating, this._ratingBoxCallBack);

  @override
  _RatingBoxState createState() {
    return _RatingBoxState(rating);
  }
}

class _RatingBoxState extends State<RatingBox> {
  int? rate;

  _RatingBoxState(int? rate) {
    this.rate = rate;
  }

  void setNewRating(int newRating) {
    widget._ratingBoxCallBack.call(newRating);

    setState(() {
      this.rate = newRating;
    });
  }

  @override
  Widget build(BuildContext context) {
    double _size = 20;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
            padding: EdgeInsets.all(0),
            child: IconButton(
              icon: this.rate! >= 1
                  ? (Icon(
                      Icons.star,
                      size: _size,
                    ))
                  : (Icon(
                      Icons.star_border,
                      size: _size,
                    )),
              color: Colors.red[500],
              onPressed: () {
                setNewRating(1);
              },
              iconSize: _size,
            )),
        Container(
            padding: EdgeInsets.all(0),
            child: IconButton(
              icon: this.rate! >= 2
                  ? (Icon(
                      Icons.star,
                      size: _size,
                    ))
                  : (Icon(
                      Icons.star_border,
                      size: _size,
                    )),
              color: Colors.red[500],
              onPressed: () {
                setNewRating(2);
              },
              iconSize: _size,
            )),
        Container(
            padding: EdgeInsets.all(0),
            child: IconButton(
              icon: this.rate! >= 3
                  ? (Icon(
                      Icons.star,
                      size: _size,
                    ))
                  : (Icon(
                      Icons.star_border,
                      size: _size,
                    )),
              color: Colors.red[500],
              onPressed: () {
                setNewRating(3);
              },
              iconSize: _size,
            )),
      ],
    );
  }
}
