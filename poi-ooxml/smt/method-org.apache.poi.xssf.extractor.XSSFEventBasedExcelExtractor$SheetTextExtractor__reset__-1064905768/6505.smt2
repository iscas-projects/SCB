(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1305 0)
(declare-sort var524 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun output/-706005320 (var1305) String)
(declare-fun setLength/1276735992 (String Int) void)
(declare-fun firstCellOfRow/-706005320 (var1305) Bool)
(declare-fun headerFooterMap/-706005320 (var1305) var524)
(declare-const null-var1305 var1305)
(declare-const null-var524 var524)
(declare-const var1495 var1305) ; Statement: r0 := @this: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor 
(assert (not (= var1495 null-var1305)))
(define-const var1009 String (output/-706005320 var1495)) ; Statement: $r1 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: java.lang.StringBuilder output> 
(assert true)
;(assert (setLength/1276735992 var1009 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: void setLength(int)>(0) 

(declare-const var1009!1 String)
(declare-const var1256 Int)
(declare-const var1495!1 var1305)
(assert (not (= var1495!1 null-var1305)))
(assert (= (firstCellOfRow/-706005320 var1495!1) (ite (= 1 1) true false))) ; Statement: r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: boolean firstCellOfRow> = 1 
(define-const var2829 var524 (headerFooterMap/-706005320 var1495!1)) ; Statement: $r2 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: java.util.Map headerFooterMap> 
 ; Statement: if $r2 == null goto return 
(assert (= var2829 null-var524)) ; Cond: $r2 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {output/-706005320=([org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor], java.lang.StringBuilder), setLength/1276735992=([java.lang.StringBuilder, int], void), firstCellOfRow/-706005320=([org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor], boolean), headerFooterMap/-706005320=([org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor], java.util.Map)}
; {var1305=org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor, var1495=r0, var1009=$r1, var1256=0, var524=java.util.Map, var2829=$r2}
; {org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor=var1305, r0=var1495, $r1=var1009, 0=var1256, java.util.Map=var524, $r2=var2829}
;seq <java.lang.StringBuilder: void setLength(int)>
;cnt {"<java.lang.StringBuilder: void setLength(int)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor;	$r1 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: java.lang.StringBuilder output>;	virtualinvoke $r1.<java.lang.StringBuilder: void setLength(int)>(0);	r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: boolean firstCellOfRow> = 1;	$r2 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor: java.util.Map headerFooterMap>;	if $r2 == null goto return;	return
;block_num 2