(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3518 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var3919 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3919 null-String)))
(assert true)
(define-const var2244 Bool (startsWith/-1785782452 var3919 "{")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("{") 
 ; Statement: if $z0 != 0 goto i0 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(44, 1) 
(assert (not (not (= (ite var2244 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3919=r0, var3518=null_type, var2244=$z0}
; {r0=var3919, null_type=var3518, $z0=var2244}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("{");	if $z0 != 0 goto i0 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(44, 1);	return 0
;block_num 2