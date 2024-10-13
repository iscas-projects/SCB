(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var881 0)
(declare-sort var3429 0)
(declare-sort var3188 0)
(declare-sort var2155 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3429_peek/625256415 (var3429) var2155)
(declare-const null-var881 var881)
(declare-const null-var3429 var3429)
(declare-const null-String String)
(declare-const var1039 var881) ; Statement: r10 := @this: jdk.jfr.internal.tool.Command 
(assert (not (= var1039 null-var881)))
(declare-const var307 var3429) ; Statement: r1 := @parameter0: java.util.Deque 
(assert (not (= var307 null-var3429)))
(declare-const var1910 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1910 null-String)))
(define-const var3684 var2155 (var3429_peek/625256415 var307)) ; Statement: $r2 = interfaceinvoke r1.<java.util.Deque: java.lang.Object peek()>() 
(assert true)
(define-const var1526 Bool false) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var1526 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3429_peek/625256415=([java.util.Deque], java.lang.Object)}
; {var881=jdk.jfr.internal.tool.Command, var1039=r10, var3429=java.util.Deque, var307=r1, var1910=r0, var3188=null_type, var2155=java.lang.Object, var3684=$r2, var1526=$z0}
; {jdk.jfr.internal.tool.Command=var881, r10=var1039, java.util.Deque=var3429, r1=var307, r0=var1910, null_type=var3188, java.lang.Object=var2155, $r2=var3684, $z0=var1526}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r10 := @this: jdk.jfr.internal.tool.Command;	r1 := @parameter0: java.util.Deque;	r0 := @parameter1: java.lang.String;	$r2 = interfaceinvoke r1.<java.util.Deque: java.lang.Object peek()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto return 0;	return 0
;block_num 2