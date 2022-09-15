import 'package:cloud_storage/pages/home/fragment/home_fragment_state.dart';
import 'package:cloud_storage/resource/CPColors.dart';
import 'package:cloud_storage/widget/v_text.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BarChartHome extends StatefulWidget {
  HomeFragmentStates state;

  BarChartHome({Key? key, required this.state}) : super(key: key);

  @override
  State<StatefulWidget> createState() => BarChartHomeState();
}

class BarChartHomeState extends State<BarChartHome> {
  final Duration animDuration = const Duration(milliseconds: 250);

  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        color: Theme.of(context).colorScheme.onPrimary,
        shadowColor: Theme.of(context).colorScheme.onPrimary,
        surfaceTintColor: Theme.of(context).colorScheme.onPrimary,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  vText(
                    (widget.state.selectPeriode == 'Jan-Jun')
                        ? 'Januari - Juni'
                        : 'Juli - Desember',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  vText(
                    'Tren upload data berdasarkan waktu entry system',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  (widget.state.isLoadingGrafik == true)
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : (widget.state.checkListGrafikJanJun(
                                widget.state.dataGrafik.data,
                              ) ==
                              false)
                          ? SvgPicture.asset('images/image_no_data.svg')
                          : Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: BarChart(
                                  barChartData(),
                                  swapAnimationDuration: animDuration,
                                ),
                              ),
                            ),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(
    int x,
    double y, {
    bool isTouched = false,
    Color barColor = Colors.white,
    double width = 22,
    List<int> showTooltips = const [],
  }) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          y: isTouched ? y + 1 : y,
          width: width,
          borderSide: isTouched
              ? BorderSide(
                  color: Theme.of(context).colorScheme.primary, width: 1)
              : const BorderSide(color: Colors.white, width: 0),
          backDrawRodData: BackgroundBarChartRodData(
            show: false,
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups() =>
      (widget.state.selectPeriode == 'Jan-Jun')
          ? List.generate(widget.state.dataGrafik.data.length, (i) {
              double item =
                  double.parse(widget.state.dataGrafik.data[i].toString());

              switch (i) {
                case 0:
                  return makeGroupData(0, item, isTouched: i == touchedIndex);
                case 1:
                  return makeGroupData(1, item, isTouched: i == touchedIndex);
                case 2:
                  return makeGroupData(2, item, isTouched: i == touchedIndex);
                case 3:
                  return makeGroupData(3, item, isTouched: i == touchedIndex);
                case 4:
                  return makeGroupData(4, item, isTouched: i == touchedIndex);
                case 5:
                  return makeGroupData(5, item, isTouched: i == touchedIndex);
                default:
                  return throw Error();
              }
            })
          : List.generate(widget.state.dataGrafik.data.length, (i) {
              double item =
                  double.parse(widget.state.dataGrafik.data[i].toString());

              switch (i) {
                case 0:
                  return makeGroupData(6, item, isTouched: i == touchedIndex);
                case 1:
                  return makeGroupData(7, item, isTouched: i == touchedIndex);
                case 2:
                  return makeGroupData(8, item, isTouched: i == touchedIndex);
                case 3:
                  return makeGroupData(9, item, isTouched: i == touchedIndex);
                case 4:
                  return makeGroupData(10, item, isTouched: i == touchedIndex);
                case 5:
                  return makeGroupData(11, item, isTouched: i == touchedIndex);
                default:
                  return throw Error();
              }
            });

  BarChartData barChartData() {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
            tooltipBgColor: CPGreen,
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              String weekDay;
              switch (group.x.toInt()) {
                case 0:
                  weekDay = 'Januari';
                  break;
                case 1:
                  weekDay = 'Fabruari';
                  break;
                case 2:
                  weekDay = 'Maret';
                  break;
                case 3:
                  weekDay = 'April';
                  break;
                case 4:
                  weekDay = 'Mei';
                  break;
                case 5:
                  weekDay = 'Juni';
                  break;
                case 6:
                  weekDay = 'Juli';
                  break;
                case 7:
                  weekDay = 'Agustus';
                  break;
                case 8:
                  weekDay = 'September';
                  break;
                case 9:
                  weekDay = 'Oktober';
                  break;
                case 10:
                  weekDay = 'November';
                  break;
                case 11:
                  weekDay = 'Desember';
                  break;
                default:
                  throw Error();
              }
              return BarTooltipItem(
                weekDay + '\n',
                const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: (rod.y - 1).toString(),
                    style: const TextStyle(
                      color: Colors.yellow,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              );
            }),
        touchCallback: (FlTouchEvent event, barTouchResponse) {
          setState(() {
            if (!event.isInterestedForInteractions ||
                barTouchResponse == null ||
                barTouchResponse.spot == null) {
              touchedIndex = -1;
              return;
            }
            touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
          });
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        bottomTitles: SideTitles(
          showTitles: true,
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return 'Jan';
              case 1:
                return 'Feb';
              case 2:
                return 'Mar';
              case 3:
                return 'Apr';
              case 4:
                return 'Mei';
              case 5:
                return 'Jun';
              case 6:
                return 'Jul';
              case 7:
                return 'Ag';
              case 8:
                return 'Sep';
              case 9:
                return 'Okt';
              case 10:
                return 'Nov';
              case 11:
                return 'Des';
              default:
                return '';
            }
          },
          reservedSize: 38,
        ),
        leftTitles: SideTitles(
          showTitles: true,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
      gridData: FlGridData(show: false),
    );
  }
}
