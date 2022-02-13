import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentRatingWidget extends StatefulWidget {
  const StudentRatingWidget({Key key}) : super(key: key);

  @override
  _StudentRatingWidgetState createState() => _StudentRatingWidgetState();
}

class _StudentRatingWidgetState extends State<StudentRatingWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: double.infinity,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: double.infinity,
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: AutoSizeText(
                  'Student Rating:',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 400,
                      ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: double.infinity,
              decoration: BoxDecoration(),
              child: RatingBarIndicator(
                itemBuilder: (context, index) => Icon(
                  Icons.star_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
                direction: Axis.horizontal,
                rating: 3,
                unratedColor: Color(0xFF9E9E9E),
                itemCount: 5,
                itemSize: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
