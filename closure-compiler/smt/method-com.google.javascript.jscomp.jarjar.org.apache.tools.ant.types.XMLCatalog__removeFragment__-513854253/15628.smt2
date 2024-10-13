(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var182 0)
(declare-sort var1663 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-const null-var182 var182)
(declare-const null-String String)
(declare-const var696 var182) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.XMLCatalog 
(assert (not (= var696 null-var182)))
(declare-const var3309 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3309 null-String)))
(define-const var1569 String var3309) ; Statement: r2 = r0 
(assert true)
(define-const var3167 Int (indexOf/-1209756239 var3309 "#")) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("#") 
 ; Statement: if i0 < 0 goto return r2 
(assert (< var3167 0)) ; Cond: i0 < 0 
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int)}
; {var182=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.XMLCatalog, var696=r1, var3309=r0, var1663=null_type, var1569=r2, var3167=i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.XMLCatalog=var182, r1=var696, r0=var3309, null_type=var1663, r2=var1569, i0=var3167}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.XMLCatalog;	r0 := @parameter0: java.lang.String;	r2 = r0;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("#");	if i0 < 0 goto return r2;	return r2
;block_num 2