(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2546 0)
(declare-sort var1722 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var2546 var2546)
(declare-const null-String String)
(declare-const var457 var2546) ; Statement: r7 := @this: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor 
(assert (not (= var457 null-var2546)))
(declare-const var285 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var285 null-String)))
(declare-const var1766 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1766 null-String)))
(assert true)
(define-const var260 Int (indexOf/-1209756239 var285 var1766)) ; Statement: i0 = virtualinvoke r8.<java.lang.String: int indexOf(java.lang.String)>(r0) 
 ; Statement: if i0 != 0 goto (branch) 
(assert (not (not (= var260 0)))) ; Negate: Cond: i0 != 0  
(assert (and true (and (>= 2 0) (>= (str.len var285) 2))))
(define-const var285!1 String (substring/850833817 var285 2)) ; Statement: r8 = virtualinvoke r8.<java.lang.String: java.lang.String substring(int)>(2) 
 ; Statement: goto [?= return r8] 
(assert true) ; Non Conditional
 ; Statement: return r8 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var2546=org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor, var457=r7, var285=r8, var1722=null_type, var1766=r0, var260=i0}
; {org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor=var2546, r7=var457, r8=var285, null_type=var1722, r0=var1766, i0=var260}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r7 := @this: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor$SheetTextExtractor;	r8 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	i0 = virtualinvoke r8.<java.lang.String: int indexOf(java.lang.String)>(r0);	if i0 != 0 goto (branch);	r8 = virtualinvoke r8.<java.lang.String: java.lang.String substring(int)>(2);	goto [?= return r8];	return r8
;block_num 3