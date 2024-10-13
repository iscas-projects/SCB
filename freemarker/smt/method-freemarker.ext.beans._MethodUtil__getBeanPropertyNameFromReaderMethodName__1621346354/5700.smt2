(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var149 0)
(declare-sort var2945 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var2945-TYPE ClassObject)
(declare-const var3404 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3404 null-String)))
(declare-const var2112 ClassObject) ; Statement: r1 := @parameter1: java.lang.Class 
(assert (not (= var2112 null-ClassObject)))
(assert true)
(define-const var874 Bool (startsWith/-1785782452 var3404 "get")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("get") 
 ; Statement: if $z0 == 0 goto $r2 = <java.lang.Boolean: java.lang.Class TYPE> 
(assert (= (ite var874 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2231 ClassObject var2945-TYPE) ; Statement: $r2 = <java.lang.Boolean: java.lang.Class TYPE> 
 ; Statement: if r1 != $r2 goto return null 
(assert (not (= var2112 var2231))) ; Cond: r1 != $r2 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3404=r0, var149=null_type, var2112=r1, var874=$z0, var2945=java.lang.Boolean, var2231=$r2}
; {r0=var3404, null_type=var149, r1=var2112, $z0=var874, java.lang.Boolean=var2945, $r2=var2231}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.Class;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("get");	if $z0 == 0 goto $r2 = <java.lang.Boolean: java.lang.Class TYPE>;	$r2 = <java.lang.Boolean: java.lang.Class TYPE>;	if r1 != $r2 goto return null;	return null
;block_num 3