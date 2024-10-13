(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3487 0)
(declare-sort var3947 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var3487 var3487)
(declare-const null-String String)
(declare-const var1710 var3487) ; Statement: r1 := @this: com.google.javascript.jscomp.JsMessageVisitor 
(assert (not (= var1710 null-var3487)))
(declare-const var3437 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3437 null-String)))
(assert true)
(define-const var1281 Bool (startsWith/-1785782452 var3437 "MSG_")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("MSG_") 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var1281 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2409 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3487=com.google.javascript.jscomp.JsMessageVisitor, var1710=r1, var3437=r0, var3947=null_type, var1281=$z0, var2409=$z2}
; {com.google.javascript.jscomp.JsMessageVisitor=var3487, r1=var1710, r0=var3437, null_type=var3947, $z0=var1281, $z2=var2409}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.JsMessageVisitor;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("MSG_");	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3