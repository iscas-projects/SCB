(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1432 0)
(declare-sort var243 0)
(declare-sort var1825 0)
(declare-sort var1187 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var243_getRichStringCellValue/-1333477385 (var243) var1825)
(declare-fun var1825_getString/468471729 (var1825) String)
(declare-fun checkMaxTextSize/-183588552 (var1187 String String) void)
(declare-fun cast-from-var1432-to-var1187 (var1432) var1187)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1432 var1432)
(declare-const null-String String)
(declare-const null-var243 var243)
(declare-const var401 var1432) ; Statement: r3 := @this: org.apache.poi.xssf.extractor.XSSFExcelExtractor 
(assert (not (= var401 null-var1432)))
(declare-const var993 String) ; Statement: r4 := @parameter0: java.lang.StringBuilder 
(assert (not (= var993 null-String)))
(declare-const var3947 var243) ; Statement: r0 := @parameter1: org.apache.poi.ss.usermodel.Cell 
(assert (not (= var3947 null-var243)))
(define-const var3672 var1825 (var243_getRichStringCellValue/-1333477385 var3947)) ; Statement: $r1 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Cell: org.apache.poi.ss.usermodel.RichTextString getRichStringCellValue()>() 
(define-const var445 String (var1825_getString/468471729 var3672)) ; Statement: r2 = interfaceinvoke $r1.<org.apache.poi.ss.usermodel.RichTextString: java.lang.String getString()>() 
(assert true)
;(assert (checkMaxTextSize/-183588552 (cast-from-var1432-to-var1187 var401) (cast-from-String-to-String var993) var445)) ; Statement: virtualinvoke r3.<org.apache.poi.xssf.extractor.XSSFExcelExtractor: void checkMaxTextSize(java.lang.CharSequence,java.lang.String)>(r4, r2) 

(declare-const var401!1 var1432)
(declare-const var993!1 String)
(declare-const var445!1 String)
(assert true)
;(assert (append/672562846 var993!1 var445!1)) ; Statement: virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var993!2 String)
(assert (= var993!2 (str.++ var993!1 var445!1)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var243_getRichStringCellValue/-1333477385=([org.apache.poi.ss.usermodel.Cell], org.apache.poi.ss.usermodel.RichTextString), var1825_getString/468471729=([org.apache.poi.ss.usermodel.RichTextString], java.lang.String), checkMaxTextSize/-183588552=([org.apache.poi.ooxml.extractor.POIXMLTextExtractor, java.lang.CharSequence, java.lang.String], void), cast-from-var1432-to-var1187=([org.apache.poi.xssf.extractor.XSSFExcelExtractor], org.apache.poi.ooxml.extractor.POIXMLTextExtractor), cast-from-String-to-String=([java.lang.StringBuilder], java.lang.CharSequence), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1432=org.apache.poi.xssf.extractor.XSSFExcelExtractor, var401=r3, var993=r4, var243=org.apache.poi.ss.usermodel.Cell, var3947=r0, var1825=org.apache.poi.ss.usermodel.RichTextString, var3672=$r1, var445=r2, var1187=org.apache.poi.ooxml.extractor.POIXMLTextExtractor}
; {org.apache.poi.xssf.extractor.XSSFExcelExtractor=var1432, r3=var401, r4=var993, org.apache.poi.ss.usermodel.Cell=var243, r0=var3947, org.apache.poi.ss.usermodel.RichTextString=var1825, $r1=var3672, r2=var445, org.apache.poi.ooxml.extractor.POIXMLTextExtractor=var1187}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r3 := @this: org.apache.poi.xssf.extractor.XSSFExcelExtractor;	r4 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: org.apache.poi.ss.usermodel.Cell;	$r1 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Cell: org.apache.poi.ss.usermodel.RichTextString getRichStringCellValue()>();	r2 = interfaceinvoke $r1.<org.apache.poi.ss.usermodel.RichTextString: java.lang.String getString()>();	virtualinvoke r3.<org.apache.poi.xssf.extractor.XSSFExcelExtractor: void checkMaxTextSize(java.lang.CharSequence,java.lang.String)>(r4, r2);	virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	return
;block_num 1