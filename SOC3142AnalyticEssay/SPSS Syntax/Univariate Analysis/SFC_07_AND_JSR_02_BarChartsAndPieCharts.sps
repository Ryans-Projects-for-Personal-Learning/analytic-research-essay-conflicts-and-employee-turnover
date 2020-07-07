/*Bar Charts

* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=JSR_02 COUNT()[name="COUNT"] MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: JSR_02=col(source(s), name("JSR_02"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  GUIDE: axis(dim(1), label("Job satisfaction"))
  GUIDE: axis(dim(2), label("Count"))
  GUIDE: text.title(label("Simple Bar Count of Job satisfaction"))
  SCALE: cat(dim(1), include("1", "2", "3", "4", "5"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: interval(position(JSR_02*COUNT), shape.interior(shape.square))
END GPL.

* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=SFC_07 COUNT()[name="COUNT"] MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: SFC_07=col(source(s), name("SFC_07"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  GUIDE: axis(dim(1), label("Conflicts with managers or supervisors at work - Past 12 months"))
  GUIDE: axis(dim(2), label("Count"))
  GUIDE: text.title(label("Simple Bar Count of Conflicts with managers or supervisors at work - ",
    "Past 12 months"))
  SCALE: cat(dim(1), include("1", "2", "3", "4", "5", "6"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: interval(position(SFC_07*COUNT), shape.interior(shape.square))
END GPL.

/*Pie Charts

* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=JSR_02 COUNT()[name="COUNT"] MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: JSR_02=col(source(s), name("JSR_02"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  COORD: polar.theta(startAngle(0))
  GUIDE: axis(dim(1), null())
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("Job satisfaction"))
  GUIDE: text.title(label("Pie Chart Count of Job satisfaction"))
  SCALE: linear(dim(1), dataMinimum(), dataMaximum())
  SCALE: cat(aesthetic(aesthetic.color.interior), include("1", "2", "3", "4", "5"))
  ELEMENT: interval.stack(position(summary.percent(COUNT))), color.interior(JSR_02))
END GPL.

* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=SFC_07 COUNT()[name="COUNT"] MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: SFC_07=col(source(s), name("SFC_07"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  COORD: polar.theta(startAngle(0))
  GUIDE: axis(dim(1), null())
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("Conflicts with managers or ",
    "supervisors at work - Past 12 months"))
  GUIDE: text.title(label("Pie Chart Count of Conflicts with managers or supervisors at work - ",
    "Past 12 months"))
  SCALE: linear(dim(1), dataMinimum(), dataMaximum())
  SCALE: cat(aesthetic(aesthetic.color.interior), include("1", "2", "3", "4", "5", "6"))
  ELEMENT: interval.stack(position(summary.percent(COUNT))), color.interior(SFC_07))
END GPL.
