(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1424 0)
(declare-sort var2405 0)
(declare-sort var1293 0)
(declare-sort var614 0)
(declare-sort var2282 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-706005320 (var1424) var2405)
(declare-fun <init>/-279557996 (var1293) void)
(declare-fun cast-from-var1424-to-var1293 (var1424) var1293)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun output/-706005320 (var1424) String)
(declare-fun firstCellOfRow/-706005320 (var1424) Bool)
(declare-fun includeHeadersFooters/575386212 (var2405) Bool)
(declare-fun cast-from-var614-to-var2282 (var614) var2282)
(declare-fun headerFooterMap/-706005320 (var1424) var2282)
(declare-const null-var1424 var1424)
(declare-const null-var2405 var2405)
(declare-const null-var614 var614)
(declare-const var2935 var1424) ; Statement: r0 := @this: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor 
(assert (not (= var2935 null-var1424)))
(declare-const var3304 var2405) ; Statement: r1 := @parameter0: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor 
(assert (not (= var3304 null-var2405)))
(declare-const var2935!1 var1424)
(assert (not (= var2935!1 null-var1424)))
(assert (= (this$0/-706005320 var2935!1) var3304)) ; Statement: r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor this$0> = r1 
(assert true)
;(assert (<init>/-279557996 (cast-from-var1424-to-var1293 var2935!1))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2935!2 var1424)
(define-const var3346 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3346 64)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>(64) 

(declare-const var3346!1 String)
(declare-const var1172 Int)
(declare-const var2935!3 var1424)
(assert (not (= var2935!3 null-var1424)))
(assert (= (output/-706005320 var2935!3) var3346!1)) ; Statement: r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: java.lang.StringBuilder output> = $r2 
(declare-const var2935!4 var1424)
(assert (not (= var2935!4 null-var1424)))
(assert (= (firstCellOfRow/-706005320 var2935!4) (ite (= 1 1) true false))) ; Statement: r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: boolean firstCellOfRow> = 1 
(define-const var395 Bool (includeHeadersFooters/575386212 var3304)) ; Statement: $z0 = r1.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor: boolean includeHeadersFooters> 
 ; Statement: if $z0 == 0 goto $r3 = null 
(assert (= (ite var395 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2381 var614 null-var614) ; Statement: $r3 = null 
(assert true) ; Non Conditional
(declare-const var2935!5 var1424)
(assert (not (= var2935!5 null-var1424)))
(assert (= (headerFooterMap/-706005320 var2935!5) (cast-from-var614-to-var2282 var2381))) ; Statement: r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: java.util.Map headerFooterMap> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-706005320=([org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor], org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor), <init>/-279557996=([java.lang.Object], void), cast-from-var1424-to-var1293=([org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), output/-706005320=([org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor], java.lang.StringBuilder), firstCellOfRow/-706005320=([org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor], boolean), includeHeadersFooters/575386212=([org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor], boolean), cast-from-var614-to-var2282=([java.util.HashMap], java.util.Map), headerFooterMap/-706005320=([org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor], java.util.Map)}
; {var1424=org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor, var2935=r0, var2405=org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor, var3304=r1, var1293=java.lang.Object, var3346=$r2, var1172=64, var395=$z0, var614=java.util.HashMap, var2381=$r3, var2282=java.util.Map}
; {org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor=var1424, r0=var2935, org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor=var2405, r1=var3304, java.lang.Object=var1293, $r2=var3346, 64=var1172, $z0=var395, java.util.HashMap=var614, $r3=var2381, java.util.Map=var2282}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor;	r1 := @parameter0: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor;	r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor this$0> = r1;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>(64);	r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: java.lang.StringBuilder output> = $r2;	r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: boolean firstCellOfRow> = 1;	$z0 = r1.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor: boolean includeHeadersFooters>;	if $z0 == 0 goto $r3 = null;	$r3 = null;	r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: java.util.Map headerFooterMap> = $r3;	return
;block_num 3