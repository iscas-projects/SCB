(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3513 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun output/-706005320 (var3513) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var3513 var3513)
(declare-const null-Int Int)
(declare-const var1051 var3513) ; Statement: r0 := @this: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor 
(assert (not (= var1051 null-var3513)))
(declare-const var2065 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2065 null-Int)))
(define-const var2429 String (output/-706005320 var1051)) ; Statement: $r1 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: java.lang.StringBuilder output> 
(assert true)
;(assert (append/-1166366385 var2429 10)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var2429!1 String)
(assert (str.prefixof var2429 var2429!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {output/-706005320=([org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var3513=org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor, var1051=r0, var2065=i0, var2429=$r1}
; {org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor=var3513, r0=var1051, i0=var2065, $r1=var2429}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor;	i0 := @parameter0: int;	$r1 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: java.lang.StringBuilder output>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	return
;block_num 1