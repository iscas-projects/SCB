(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3913 0)
(declare-sort var1734 0)
(declare-sort var916 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-706005320 (var3913) var1734)
(declare-fun output/-706005320 (var3913) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun checkMaxTextSize/-183588552 (var916 String String) void)
(declare-fun cast-from-var1734-to-var916 (var1734) var916)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun append/-13659068 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3913 var3913)
(declare-const null-String String)
(declare-const var1139 var3913) ; Statement: r0 := @this: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor 
(assert (not (= var1139 null-var3913)))
(declare-const var3341 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3341 null-String)))
(define-const var1811 var1734 (this$0/-706005320 var1139)) ; Statement: $r3 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor this$0> 
(define-const var359 String (output/-706005320 var1139)) ; Statement: $r2 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: java.lang.StringBuilder output> 
(assert true)
(define-const var712 String (toString/-2075883882 var359)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (checkMaxTextSize/-183588552 (cast-from-var1734-to-var916 var1811) (cast-from-String-to-String var3341) var712)) ; Statement: virtualinvoke $r3.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor: void checkMaxTextSize(java.lang.CharSequence,java.lang.String)>(r1, $r4) 

(declare-const var1811!1 var1734)
(declare-const var3341!1 String)
(declare-const var712!1 String)
(define-const var2046 String (output/-706005320 var1139)) ; Statement: $r5 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: java.lang.StringBuilder output> 
(assert true)
;(assert (append/-13659068 var3341!1 (cast-from-String-to-String var2046))) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r5) 
(declare-const var3341!2 String)
(assert (str.prefixof var3341!1 var3341!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-706005320=([org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor], org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor), output/-706005320=([org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), checkMaxTextSize/-183588552=([org.apache.poi.ooxml.extractor.POIXMLTextExtractor, java.lang.CharSequence, java.lang.String], void), cast-from-var1734-to-var916=([org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor], org.apache.poi.ooxml.extractor.POIXMLTextExtractor), cast-from-String-to-String=([java.lang.StringBuilder], java.lang.CharSequence), append/-13659068=([java.lang.StringBuilder, java.lang.CharSequence], java.lang.StringBuilder)}
; {var3913=org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor, var1139=r0, var3341=r1, var1734=org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor, var1811=$r3, var359=$r2, var712=$r4, var916=org.apache.poi.ooxml.extractor.POIXMLTextExtractor, var2046=$r5}
; {org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor=var3913, r0=var1139, r1=var3341, org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor=var1734, $r3=var1811, $r2=var359, $r4=var712, org.apache.poi.ooxml.extractor.POIXMLTextExtractor=var916, $r5=var2046}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor;	r1 := @parameter0: java.lang.StringBuilder;	$r3 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor this$0>;	$r2 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: java.lang.StringBuilder output>;	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r3.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor: void checkMaxTextSize(java.lang.CharSequence,java.lang.String)>(r1, $r4);	$r5 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: java.lang.StringBuilder output>;	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r5);	return
;block_num 1