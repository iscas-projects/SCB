(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2142 0)
(declare-sort var976 0)
(declare-sort var2502 0)
(declare-sort var3279 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstCellOfRow/-706005320 (var2142) Bool)
(declare-fun output/-706005320 (var2142) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun this$0/-706005320 (var2142) var3279)
(declare-fun includeCellComments/575386212 (var3279) Bool)
(declare-const null-var2142 var2142)
(declare-const null-String String)
(declare-const null-var2502 var2502)
(declare-const var2744 var2142) ; Statement: r0 := @this: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor 
(assert (not (= var2744 null-var2142)))
(declare-const var1041 String) ; Statement: r24 := @parameter0: java.lang.String 
(assert (not (= var1041 null-String)))
(declare-const var786 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var786 null-String)))
(declare-const var1371 var2502) ; Statement: r4 := @parameter2: org.apache.poi.xssf.usermodel.XSSFComment 
(assert (not (= var1371 null-var2502)))
(define-const var127 Bool (firstCellOfRow/-706005320 var2744)) ; Statement: $z0 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: boolean firstCellOfRow> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: java.lang.StringBuilder output> 
(assert (= (ite var127 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1349 String (output/-706005320 var2744)) ; Statement: $r1 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: java.lang.StringBuilder output> 
(assert true)
;(assert (append/-1166366385 var1349 9)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(9) 
(declare-const var1349!1 String)
(assert (str.prefixof var1349 var1349!1))
(assert true) ; Non Conditional
 ; Statement: if r2 == null goto $r3 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor this$0> 
(assert (= var786 null-String)) ; Cond: r2 == null 
(define-const var1510 var3279 (this$0/-706005320 var2744)) ; Statement: $r3 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor this$0> 
(define-const var407 Bool (includeCellComments/575386212 var1510)) ; Statement: $z1 = $r3.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor: boolean includeCellComments> 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var407 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {firstCellOfRow/-706005320=([org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor], boolean), output/-706005320=([org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), this$0/-706005320=([org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor], org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor), includeCellComments/575386212=([org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor], boolean)}
; {var2142=org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor, var2744=r0, var1041=r24, var976=null_type, var786=r2, var2502=org.apache.poi.xssf.usermodel.XSSFComment, var1371=r4, var127=$z0, var1349=$r1, var3279=org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor, var1510=$r3, var407=$z1}
; {org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor=var2142, r0=var2744, r24=var1041, null_type=var976, r2=var786, org.apache.poi.xssf.usermodel.XSSFComment=var2502, r4=var1371, $z0=var127, $r1=var1349, org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor=var3279, $r3=var1510, $z1=var407}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor;	r24 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r4 := @parameter2: org.apache.poi.xssf.usermodel.XSSFComment;	$z0 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: boolean firstCellOfRow>;	if $z0 == 0 goto $r1 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: java.lang.StringBuilder output>;	$r1 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: java.lang.StringBuilder output>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(9);	if r2 == null goto $r3 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor this$0>;	$r3 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor this$0>;	$z1 = $r3.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor: boolean includeCellComments>;	if $z1 == 0 goto return;	return
;block_num 5