(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2229 0)
(declare-sort var2051 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isInSheetData/2076037668 (var2229) Bool)
(declare-const null-var2229 var2229)
(declare-const null-String String)
(declare-const var2382 var2229) ; Statement: r2 := @this: cn.hutool.poi.excel.sax.SheetDataSaxHandler 
(assert (not (= var2382 null-var2229)))
(declare-const var1595 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1595 null-String)))
(declare-const var344 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var344 null-String)))
(declare-const var3303 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var3303 null-String)))
(define-const var3393 String "sheetData") ; Statement: $r1 = "sheetData" 
(assert true)
(define-const var3484 Bool (= var3393 var3303)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $z1 = r2.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: boolean isInSheetData> 
(assert (not (= (ite var3484 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var2382!1 var2229)
(assert (not (= var2382!1 null-var2229)))
(assert (= (isInSheetData/2076037668 var2382!1) (ite (= 1 0) true false))) ; Statement: r2.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: boolean isInSheetData> = 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isInSheetData/2076037668=([cn.hutool.poi.excel.sax.SheetDataSaxHandler], boolean)}
; {var2229=cn.hutool.poi.excel.sax.SheetDataSaxHandler, var2382=r2, var1595=r5, var2051=null_type, var344=r6, var3303=r0, var3393=$r1, var3484=$z0}
; {cn.hutool.poi.excel.sax.SheetDataSaxHandler=var2229, r2=var2382, r5=var1595, null_type=var2051, r6=var344, r0=var3303, $r1=var3393, $z0=var3484}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: cn.hutool.poi.excel.sax.SheetDataSaxHandler;	r5 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	$r1 = "sheetData";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $z1 = r2.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: boolean isInSheetData>;	r2.<cn.hutool.poi.excel.sax.SheetDataSaxHandler: boolean isInSheetData> = 0;	return
;block_num 2