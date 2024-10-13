(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/76075152 (String (Array Int Int)) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2390 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var2390 null-__Array__Int__Int__)))
(define-const var2426 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
;(assert (<init>/76075152 var2426 var2390)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(byte[])>(r1) 

(declare-const var2426!1 String)
(declare-const var2390!1 (Array Int Int))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/76075152=([java.lang.String, byte[]], void)}
; {var2390=r1, var2426=$r0}
; {r1=var2390, $r0=var2426}
;seq <java.lang.String: void <init>(byte[])>
;cnt {"<java.lang.String: void <init>(byte[])>": 1}
;stmts r1 := @parameter0: byte[];	$r0 = new java.lang.String;	specialinvoke $r0.<java.lang.String: void <init>(byte[])>(r1);	return $r0
;block_num 1