(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var660 0)
(declare-sort var406 0)
(declare-sort var1420 0)
(declare-sort var3658 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var406_notNull/-1363825176 (var1420 String) var1420)
(declare-fun cast-from-String-to-var1420 (String) var1420)
(declare-const null-String String)
(declare-const null-var3658 var3658)
(declare-const var428 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var428 null-String)))
(declare-const var2490 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2490 null-String)))
;(assert (var406_notNull/-1363825176 (cast-from-String-to-var1420 var428) "expected line must not be null")) ; Statement: staticinvoke <org.junit.platform.commons.util.Preconditions: java.lang.Object notNull(java.lang.Object,java.lang.String)>(r0, "expected line must not be null") 

(declare-const var428!1 String)
(declare-const var1387 String)
;(assert (var406_notNull/-1363825176 (cast-from-String-to-var1420 var2490) "actual line must not be null")) ; Statement: staticinvoke <org.junit.platform.commons.util.Preconditions: java.lang.Object notNull(java.lang.Object,java.lang.String)>(r1, "actual line must not be null") 

(declare-const var2490!1 String)
(declare-const var3780 String)
(assert true)
(define-const var3877 Bool (= var428!1 var2490!1)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean matches(java.lang.String)>(r0) 
(assert (not (= (ite var3877 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var869 var3658) ; Statement: $r2 := @caughtexception 
(assert (not (= var869 null-var3658)))
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {var406_notNull/-1363825176=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-String-to-var1420=([java.lang.String], java.lang.Object)}
; {var428=r0, var660=null_type, var2490=r1, var406=org.junit.platform.commons.util.Preconditions, var1420=java.lang.Object, var1387="expected line must not be null", var3780="actual line must not be null", var3877=$z0, var3658=java.util.regex.PatternSyntaxException, var869=$r2}
; {r0=var428, null_type=var660, r1=var2490, org.junit.platform.commons.util.Preconditions=var406, java.lang.Object=var1420, "expected line must not be null"=var1387, "actual line must not be null"=var3780, $z0=var3877, java.util.regex.PatternSyntaxException=var3658, $r2=var869}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	staticinvoke <org.junit.platform.commons.util.Preconditions: java.lang.Object notNull(java.lang.Object,java.lang.String)>(r0, "expected line must not be null");	staticinvoke <org.junit.platform.commons.util.Preconditions: java.lang.Object notNull(java.lang.Object,java.lang.String)>(r1, "actual line must not be null");	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean matches(java.lang.String)>(r0);	$r2 := @caughtexception;	return 0
;block_num 2