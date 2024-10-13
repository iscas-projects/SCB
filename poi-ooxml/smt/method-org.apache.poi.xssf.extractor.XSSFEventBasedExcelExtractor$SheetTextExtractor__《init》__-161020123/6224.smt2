(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var380 0)
(declare-sort var3987 0)
(declare-sort var2871 0)
(declare-sort var1651 0)
(declare-sort var3370 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-706005320 (var380) var3987)
(declare-fun <init>/-279557996 (var2871) void)
(declare-fun cast-from-var380-to-var2871 (var380) var2871)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun output/-706005320 (var380) String)
(declare-fun firstCellOfRow/-706005320 (var380) Bool)
(declare-fun includeHeadersFooters/575386212 (var3987) Bool)
(declare-fun var1651-init () var1651)
(declare-fun <init>/-201242697 (var1651) void)
(declare-fun cast-from-var1651-to-var3370 (var1651) var3370)
(declare-fun headerFooterMap/-706005320 (var380) var3370)
(declare-const null-var380 var380)
(declare-const null-var3987 var3987)
(declare-const var23 var380) ; Statement: r0 := @this: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor 
(assert (not (= var23 null-var380)))
(declare-const var2766 var3987) ; Statement: r1 := @parameter0: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor 
(assert (not (= var2766 null-var3987)))
(declare-const var23!1 var380)
(assert (not (= var23!1 null-var380)))
(assert (= (this$0/-706005320 var23!1) var2766)) ; Statement: r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor this$0> = r1 
(assert true)
;(assert (<init>/-279557996 (cast-from-var380-to-var2871 var23!1))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var23!2 var380)
(define-const var3902 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3902 64)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>(64) 

(declare-const var3902!1 String)
(declare-const var1916 Int)
(declare-const var23!3 var380)
(assert (not (= var23!3 null-var380)))
(assert (= (output/-706005320 var23!3) var3902!1)) ; Statement: r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: java.lang.StringBuilder output> = $r2 
(declare-const var23!4 var380)
(assert (not (= var23!4 null-var380)))
(assert (= (firstCellOfRow/-706005320 var23!4) (ite (= 1 1) true false))) ; Statement: r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: boolean firstCellOfRow> = 1 
(define-const var3101 Bool (includeHeadersFooters/575386212 var2766)) ; Statement: $z0 = r1.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor: boolean includeHeadersFooters> 
 ; Statement: if $z0 == 0 goto $r3 = null 
(assert (not (= (ite var3101 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var26 var1651 var1651-init) ; Statement: $r3 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var26)) ; Statement: specialinvoke $r3.<java.util.HashMap: void <init>()>() 

(declare-const var26!1 var1651)
 ; Statement: goto [?= r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: java.util.Map headerFooterMap> = $r3] 
(assert true) ; Non Conditional
(declare-const var23!5 var380)
(assert (not (= var23!5 null-var380)))
(assert (= (headerFooterMap/-706005320 var23!5) (cast-from-var1651-to-var3370 var26!1))) ; Statement: r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: java.util.Map headerFooterMap> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-706005320=([org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor], org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor), <init>/-279557996=([java.lang.Object], void), cast-from-var380-to-var2871=([org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), output/-706005320=([org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor], java.lang.StringBuilder), firstCellOfRow/-706005320=([org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor], boolean), includeHeadersFooters/575386212=([org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor], boolean), var1651-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var1651-to-var3370=([java.util.HashMap], java.util.Map), headerFooterMap/-706005320=([org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor], java.util.Map)}
; {var380=org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor, var23=r0, var3987=org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor, var2766=r1, var2871=java.lang.Object, var3902=$r2, var1916=64, var3101=$z0, var1651=java.util.HashMap, var26=$r3, var3370=java.util.Map}
; {org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor=var380, r0=var23, org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor=var3987, r1=var2766, java.lang.Object=var2871, $r2=var3902, 64=var1916, $z0=var3101, java.util.HashMap=var1651, $r3=var26, java.util.Map=var3370}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor;	r1 := @parameter0: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor;	r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor this$0> = r1;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>(64);	r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: java.lang.StringBuilder output> = $r2;	r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: boolean firstCellOfRow> = 1;	$z0 = r1.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor: boolean includeHeadersFooters>;	if $z0 == 0 goto $r3 = null;	$r3 = new java.util.HashMap;	specialinvoke $r3.<java.util.HashMap: void <init>()>();	goto [?= r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: java.util.Map headerFooterMap> = $r3];	r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: java.util.Map headerFooterMap> = $r3;	return
;block_num 3