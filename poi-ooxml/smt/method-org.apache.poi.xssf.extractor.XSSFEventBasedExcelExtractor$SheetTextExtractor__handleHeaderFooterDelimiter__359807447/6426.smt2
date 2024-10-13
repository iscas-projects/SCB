(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2002 0)
(declare-sort var2917 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-const null-var2002 var2002)
(declare-const null-String String)
(declare-const var264 var2002) ; Statement: r7 := @this: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor 
(assert (not (= var264 null-var2002)))
(declare-const var1224 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var1224 null-String)))
(declare-const var2397 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2397 null-String)))
(assert true)
(define-const var2593 Int (indexOf/-1209756239 var1224 var2397)) ; Statement: i0 = virtualinvoke r8.<java.lang.String: int indexOf(java.lang.String)>(r0) 
 ; Statement: if i0 != 0 goto (branch) 
(assert (not (= var2593 0))) ; Cond: i0 != 0 
 ; Statement: if i0 <= 0 goto return r8 
(assert (<= var2593 0)) ; Cond: i0 <= 0 
 ; Statement: return r8 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int)}
; {var2002=org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor, var264=r7, var1224=r8, var2917=null_type, var2397=r0, var2593=i0}
; {org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor=var2002, r7=var264, r8=var1224, null_type=var2917, r0=var2397, i0=var2593}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r7 := @this: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor;	r8 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	i0 = virtualinvoke r8.<java.lang.String: int indexOf(java.lang.String)>(r0);	if i0 != 0 goto (branch);	if i0 <= 0 goto return r8;	return r8
;block_num 3