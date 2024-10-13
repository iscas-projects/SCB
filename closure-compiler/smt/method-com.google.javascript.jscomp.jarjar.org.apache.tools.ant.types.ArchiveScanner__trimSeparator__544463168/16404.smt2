(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1614 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-String String)
(declare-const var2168 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2168 null-String)))
(assert true)
(define-const var3445 Bool (endsWith/985337093 var2168 "/")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $r1 = r0 
(assert (= (ite var3445 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3256 String var2168) ; Statement: $r1 = r0 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var2168=r0, var1614=null_type, var3445=$z0, var3256=$r1}
; {r0=var2168, null_type=var1614, $z0=var3445, $r1=var3256}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("/");	if $z0 == 0 goto $r1 = r0;	$r1 = r0;	return $r1
;block_num 3