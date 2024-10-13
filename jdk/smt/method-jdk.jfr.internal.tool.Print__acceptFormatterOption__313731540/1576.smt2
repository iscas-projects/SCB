(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var168 0)
(declare-sort var1423 0)
(declare-sort var1317 0)
(declare-sort var186 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var168_peek/625256415 (var168) var186)
(declare-const null-var168 var168)
(declare-const null-var1423 var1423)
(declare-const null-String String)
(declare-const var3403 var168) ; Statement: r1 := @parameter0: java.util.Deque 
(assert (not (= var3403 null-var168)))
(declare-const var2087 var1423) ; Statement: r3 := @parameter1: jdk.jfr.internal.tool.EventPrintWriter 
(assert (not (= var2087 null-var1423)))
(declare-const var3399 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var3399 null-String)))
(define-const var123 var186 (var168_peek/625256415 var3403)) ; Statement: $r2 = interfaceinvoke r1.<java.util.Deque: java.lang.Object peek()>() 
(assert true)
(define-const var3579 Bool false) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var3579 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {var168_peek/625256415=([java.util.Deque], java.lang.Object)}
; {var168=java.util.Deque, var3403=r1, var1423=jdk.jfr.internal.tool.EventPrintWriter, var2087=r3, var3399=r0, var1317=null_type, var186=java.lang.Object, var123=$r2, var3579=$z0}
; {java.util.Deque=var168, r1=var3403, jdk.jfr.internal.tool.EventPrintWriter=var1423, r3=var2087, r0=var3399, null_type=var1317, java.lang.Object=var186, $r2=var123, $z0=var3579}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: java.util.Deque;	r3 := @parameter1: jdk.jfr.internal.tool.EventPrintWriter;	r0 := @parameter2: java.lang.String;	$r2 = interfaceinvoke r1.<java.util.Deque: java.lang.Object peek()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto return 0;	return 0
;block_num 2