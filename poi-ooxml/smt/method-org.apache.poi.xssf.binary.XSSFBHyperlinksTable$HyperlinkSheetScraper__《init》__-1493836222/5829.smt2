(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2444 0)
(declare-sort var3790 0)
(declare-sort var3008 0)
(declare-sort var2892 0)
(declare-sort var261 0)
(declare-sort var1711 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-1420018251 (var2444) var3790)
(declare-fun var3790_access$100/219349786 () var2892)
(declare-fun <init>/1558268667 (var261 var3008 var2892) void)
(declare-fun cast-from-var2444-to-var261 (var2444) var261)
(declare-fun var1711-init () var1711)
(declare-fun <init>/2008885591 (var1711) void)
(declare-fun hyperlinkCellRange/-1420018251 (var2444) var1711)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun xlWideStringBuffer/-1420018251 (var2444) String)
(declare-const null-var2444 var2444)
(declare-const null-var3790 var3790)
(declare-const null-var3008 var3008)
(declare-const var3992 var2444) ; Statement: r0 := @this: org.apache.poi.xssf.binary.XSSFBHyperlinksTable$HyperlinkSheetScraper 
(assert (not (= var3992 null-var2444)))
(declare-const var1542 var3790) ; Statement: r1 := @parameter0: org.apache.poi.xssf.binary.XSSFBHyperlinksTable 
(assert (not (= var1542 null-var3790)))
(declare-const var1261 var3008) ; Statement: r2 := @parameter1: java.io.InputStream 
(assert (not (= var1261 null-var3008)))
(declare-const var3992!1 var2444)
(assert (not (= var3992!1 null-var2444)))
(assert (= (this$0/-1420018251 var3992!1) var1542)) ; Statement: r0.<org.apache.poi.xssf.binary.XSSFBHyperlinksTable$HyperlinkSheetScraper: org.apache.poi.xssf.binary.XSSFBHyperlinksTable this$0> = r1 
(define-const var2721 var2892 var3790_access$100/219349786) ; Statement: $r3 = staticinvoke <org.apache.poi.xssf.binary.XSSFBHyperlinksTable: com.zaxxer.sparsebits.SparseBitSet access$100()>() 
(assert true)
;(assert (<init>/1558268667 (cast-from-var2444-to-var261 var3992!1) var1261 var2721)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.binary.XSSFBParser: void <init>(java.io.InputStream,com.zaxxer.sparsebits.SparseBitSet)>(r2, $r3) 

(declare-const var3992!2 var2444)
(declare-const var1261!1 var3008)
(declare-const var2721!1 var2892)
(define-const var3426 var1711 var1711-init) ; Statement: $r4 = new org.apache.poi.xssf.binary.XSSFBCellRange 
(assert true)
;(assert (<init>/2008885591 var3426)) ; Statement: specialinvoke $r4.<org.apache.poi.xssf.binary.XSSFBCellRange: void <init>()>() 

(declare-const var3426!1 var1711)
(declare-const var3992!3 var2444)
(assert (not (= var3992!3 null-var2444)))
(assert (= (hyperlinkCellRange/-1420018251 var3992!3) var3426!1)) ; Statement: r0.<org.apache.poi.xssf.binary.XSSFBHyperlinksTable$HyperlinkSheetScraper: org.apache.poi.xssf.binary.XSSFBCellRange hyperlinkCellRange> = $r4 
(define-const var3981 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3981)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3981!1 String)
(assert (= var3981!1 ""))
(declare-const var3992!4 var2444)
(assert (not (= var3992!4 null-var2444)))
(assert (= (xlWideStringBuffer/-1420018251 var3992!4) var3981!1)) ; Statement: r0.<org.apache.poi.xssf.binary.XSSFBHyperlinksTable$HyperlinkSheetScraper: java.lang.StringBuilder xlWideStringBuffer> = $r5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-1420018251=([org.apache.poi.xssf.binary.XSSFBHyperlinksTable$HyperlinkSheetScraper], org.apache.poi.xssf.binary.XSSFBHyperlinksTable), var3790_access$100/219349786=([], com.zaxxer.sparsebits.SparseBitSet), <init>/1558268667=([org.apache.poi.xssf.binary.XSSFBParser, java.io.InputStream, com.zaxxer.sparsebits.SparseBitSet], void), cast-from-var2444-to-var261=([org.apache.poi.xssf.binary.XSSFBHyperlinksTable$HyperlinkSheetScraper], org.apache.poi.xssf.binary.XSSFBParser), var1711-init=([], org.apache.poi.xssf.binary.XSSFBCellRange), <init>/2008885591=([org.apache.poi.xssf.binary.XSSFBCellRange], void), hyperlinkCellRange/-1420018251=([org.apache.poi.xssf.binary.XSSFBHyperlinksTable$HyperlinkSheetScraper], org.apache.poi.xssf.binary.XSSFBCellRange), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), xlWideStringBuffer/-1420018251=([org.apache.poi.xssf.binary.XSSFBHyperlinksTable$HyperlinkSheetScraper], java.lang.StringBuilder)}
; {var2444=org.apache.poi.xssf.binary.XSSFBHyperlinksTable$HyperlinkSheetScraper, var3992=r0, var3790=org.apache.poi.xssf.binary.XSSFBHyperlinksTable, var1542=r1, var3008=java.io.InputStream, var1261=r2, var2892=com.zaxxer.sparsebits.SparseBitSet, var2721=$r3, var261=org.apache.poi.xssf.binary.XSSFBParser, var1711=org.apache.poi.xssf.binary.XSSFBCellRange, var3426=$r4, var3981=$r5}
; {org.apache.poi.xssf.binary.XSSFBHyperlinksTable$HyperlinkSheetScraper=var2444, r0=var3992, org.apache.poi.xssf.binary.XSSFBHyperlinksTable=var3790, r1=var1542, java.io.InputStream=var3008, r2=var1261, com.zaxxer.sparsebits.SparseBitSet=var2892, $r3=var2721, org.apache.poi.xssf.binary.XSSFBParser=var261, org.apache.poi.xssf.binary.XSSFBCellRange=var1711, $r4=var3426, $r5=var3981}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.binary.XSSFBHyperlinksTable$HyperlinkSheetScraper;	r1 := @parameter0: org.apache.poi.xssf.binary.XSSFBHyperlinksTable;	r2 := @parameter1: java.io.InputStream;	r0.<org.apache.poi.xssf.binary.XSSFBHyperlinksTable$HyperlinkSheetScraper: org.apache.poi.xssf.binary.XSSFBHyperlinksTable this$0> = r1;	$r3 = staticinvoke <org.apache.poi.xssf.binary.XSSFBHyperlinksTable: com.zaxxer.sparsebits.SparseBitSet access$100()>();	specialinvoke r0.<org.apache.poi.xssf.binary.XSSFBParser: void <init>(java.io.InputStream,com.zaxxer.sparsebits.SparseBitSet)>(r2, $r3);	$r4 = new org.apache.poi.xssf.binary.XSSFBCellRange;	specialinvoke $r4.<org.apache.poi.xssf.binary.XSSFBCellRange: void <init>()>();	r0.<org.apache.poi.xssf.binary.XSSFBHyperlinksTable$HyperlinkSheetScraper: org.apache.poi.xssf.binary.XSSFBCellRange hyperlinkCellRange> = $r4;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	r0.<org.apache.poi.xssf.binary.XSSFBHyperlinksTable$HyperlinkSheetScraper: java.lang.StringBuilder xlWideStringBuffer> = $r5;	return
;block_num 1