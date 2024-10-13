(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2480 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/76075152 (String (Array Int Int)) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const var853 (Array Int Int)) ; Statement: r2 := @parameter0: byte[] 
(assert (not (= var853 null-__Array__Int__Int__)))
(declare-const var1433 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1433 null-String)))
 ; Statement: if r0 != null goto $r1 = new java.lang.String 
(assert (not (not (= var1433 null-String)))) ; Negate: Cond: r0 != null  
(define-const var1848 String String-init) ; Statement: $r3 = new java.lang.String 
(assert true)
;(assert (<init>/76075152 var1848 var853)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(byte[])>(r2) 

(declare-const var1848!1 String)
(declare-const var853!1 (Array Int Int))
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/76075152=([java.lang.String, byte[]], void)}
; {var853=r2, var1433=r0, var2480=null_type, var1848=$r3}
; {r2=var853, r0=var1433, null_type=var2480, $r3=var1848}
;seq <java.lang.String: void <init>(byte[])>
;cnt {"<java.lang.String: void <init>(byte[])>": 1}
;stmts r2 := @parameter0: byte[];	r0 := @parameter1: java.lang.String;	if r0 != null goto $r1 = new java.lang.String;	$r3 = new java.lang.String;	specialinvoke $r3.<java.lang.String: void <init>(byte[])>(r2);	return $r3
;block_num 2