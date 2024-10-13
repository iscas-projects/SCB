(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var226 0)
(declare-sort var1417 0)
(declare-sort var1256 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isInSheetData/2076037668 (var226) Bool)
(declare-const null-var226 var226)
(declare-const null-String String)
(declare-const null-var1256 var1256)
(declare-const var838 var226) ; Statement: r2 := @this: cn.hutool.poi.excel.sax.SheetDataSaxHandler 
(assert (not (= var838 null-var226)))
(declare-const var510 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var510 null-String)))
(declare-const var3987 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var3987 null-String)))
(declare-const var1384 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var1384 null-String)))
(declare-const var3015 var1256) ; Statement: r5 := @parameter3: org.xml.sax.Attributes 
(assert (not (= var3015 null-var1256)))
(define-const var2177 String "sheetData") ; Statement: $r1 = "sheetData" 
(assert true)
(define-const var2518 Bool (= var2177 var1384)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $z1 = r2.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: boolean isInSheetData> 
(assert (not (= (ite var2518 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var838!1 var226)
(assert (not (= var838!1 null-var226)))
(assert (= (isInSheetData/2076037668 var838!1) (ite (= 1 1) true false))) ; Statement: r2.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: boolean isInSheetData> = 1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isInSheetData/2076037668=([cn.hutool.poi.excel.sax.SheetDataSaxHandler], boolean)}
; {var226=cn.hutool.poi.excel.sax.SheetDataSaxHandler, var838=r2, var510=r6, var1417=null_type, var3987=r7, var1384=r0, var1256=org.xml.sax.Attributes, var3015=r5, var2177=$r1, var2518=$z0}
; {cn.hutool.poi.excel.sax.SheetDataSaxHandler=var226, r2=var838, r6=var510, null_type=var1417, r7=var3987, r0=var1384, org.xml.sax.Attributes=var1256, r5=var3015, $r1=var2177, $z0=var2518}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: cn.hutool.poi.excel.sax.SheetDataSaxHandler;	r6 := @parameter0: java.lang.String;	r7 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	r5 := @parameter3: org.xml.sax.Attributes;	$r1 = "sheetData";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $z1 = r2.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: boolean isInSheetData>;	r2.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: boolean isInSheetData> = 1;	return
;block_num 2