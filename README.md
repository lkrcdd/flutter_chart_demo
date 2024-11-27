# flutter_chart

## 1. LineChart class
LineChart LineChart(
  LineChartData data, {
  Key? chartRendererKey,
  Key? key,
  Duration duration = const Duration(milliseconds: 150),    //애니메이션 관련
  Curve curve = Curves.linear,  //애니메이션 관련
})

- LineChartData class
(new) LineChartData LineChartData({

  // 차트에 표시될 라인 데이터 리스트입니다. 각 선은 색상, 두께, 데이터 점(좌표) 등을 포함합니다.
  List<LineChartBarData> lineBarsData = const [],

  // 두 선 사이 영역을 채우는 데이터입니다. 두 선 사이를 강조하거나 비교를 시각화할 때 사용됩니다.
  // Fills area between two [LineChartBarData] with a color or gradient.
  List<BetweenBarsData> betweenBarsData = const [],

  // X축과 Y축의 제목(label) 데이터를 설정합니다. 제목의 표시 여부와 스타일을 조정할 수 있습니다.
  FlTitlesData titlesData = const FlTitlesData(),

  // 차트 위에 추가적인 수평선 및 수직선을 그릴 때 사용합니다. 기준선을 추가하거나 데이터 경계를 표시할 때 유용합니다.
  ExtraLinesData? extraLinesData = const ExtraLinesData(),

  // 차트를 터치했을 때 상호작용과 툴팁을 표시하기 위한 데이터를 정의합니다.
  LineTouchData lineTouchData = const LineTouchData(),

  // 특정 데이터 점에 툴팁(팝업 정보)을 표시하도록 설정합니다.
  List<ShowingTooltipIndicators> showingTooltipIndicators = const [],

  // 차트의 배경에 표시될 격자선(grid) 스타일을 정의합니다. 색상, 간격, 표시 여부 등을 설정할 수 있습니다.
  FlGridData? gridData = const FlGridData(),

  // 차트의 외곽선 스타일을 설정합니다. 표시 여부, 선 색상, 두께 등을 정의합니다.
  FlBorderData? borderData,

  // 차트에서 특정 범위를 강조하는 직사각형 영역을 추가합니다. 범위의 시작점과 끝점을 설정하여 시각적인 구분을 제공합니다.
  RangeAnnotations? rangeAnnotations = const RangeAnnotations(),

  double? minX,
  double? maxX,
  double? baselineX,    // X축 기준선을 설정합니다. 
  double? minY,
  double? maxY,
  double? baselineY,    // Y축 기준선을 설정합니다. 
  // 차트가 그려질 영역을 제한하는 클리핑 데이터를 정의합니다.
  FlClipData? clipData = const FlClipData.none(),
  Color? backgroundColor,
})


## 2. BarChartData class
(new) BarChartData BarChartData({
  //각 바(bar)의 데이터를 정의하는 리스트입니다. BarChartGroupData를 사용해 그룹화된 바의 데이터를 설정합니다.
  List<BarChartGroupData>? barGroups,
  
  // 바 그룹 간의 간격을 설정합니다. 값을 설정하면 각 그룹 사이에 균등한 공간을 제공합니다.
  double? groupsSpace,
  
  // 바 차트의 정렬 방식을 설정합니다. 옵션으로는 start, end, center, spaceBetween 등이 있습니다.
  BarChartAlignment? alignment,
  
  // X축 및 Y축의 제목 데이터와 스타일을 정의합니다. 축 제목의 표시 여부와 텍스트 스타일 등을 설정할 수 있습니다.
  FlTitlesData? titlesData,
  
  // 터치 상호작용과 관련된 데이터를 설정합니다. 예를 들어, 터치 이벤트 시 툴팁을 표시하거나 특정 동작을 트리거할 수 있습니다.
  BarTouchData? barTouchData,
  
  // 위와 동일
  double? maxY,
  double? minY,
  double? baselineY,
  FlGridData? gridData,
  FlBorderData? borderData,
  RangeAnnotations? rangeAnnotations,
  Color? backgroundColor,
  ExtraLinesData? extraLinesData,
})