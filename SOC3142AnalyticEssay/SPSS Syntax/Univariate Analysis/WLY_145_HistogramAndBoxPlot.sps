
* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=WLY_145 MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: WLY_145=col(source(s), name("WLY_145"))
  GUIDE: axis(dim(1), label("Number of weeks worked at the job - Past 12 months"))
  GUIDE: axis(dim(2), label("Frequency"))
  GUIDE: text.title(label("Simple Histogram of Number of weeks worked at the job - Past 12 months"))    
  ELEMENT: interval(position(summary.count(bin.rect(WLY_145))), shape.interior(shape.square))
END GPL.

* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=WLY_145 MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: WLY_145=col(source(s), name("WLY_145"))
  DATA: id=col(source(s), name("$CASENUM"), unit.category())
  COORD: rect(dim(1), transpose())
  GUIDE: axis(dim(1), label("Number of weeks worked at the job - Past 12 months"))
  GUIDE: text.title(label("1-D Boxplot of Number of weeks worked at the job - Past 12 months"))
  ELEMENT: schema(position(bin.quantile.letter(WLY_145)), label(id))
END GPL.
