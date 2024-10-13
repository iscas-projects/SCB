(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3396 (Array Int Int)) ; Statement: r0 := @parameter0: char[] 
(assert (not (= var3396 null-__Array__Int__Int__)))
 ; Statement: if r0 != null goto $r1 = new java.lang.String 
(assert (not (= var3396 null-__Array__Int__Int__))) ; Cond: r0 != null 
(define-const var1277 String String-init) ; Statement: $r1 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var1277 var3396)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(char[])>(r0) 

(declare-const var1277!1 String)
(declare-const var3396!1 (Array Int Int))
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var3396=r0, var1277=$r1}
; {r0=var3396, $r1=var1277}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r0 := @parameter0: char[];	if r0 != null goto $r1 = new java.lang.String;	$r1 = new java.lang.String;	specialinvoke $r1.<java.lang.String: void <init>(char[])>(r0);	return $r1
;block_num 3