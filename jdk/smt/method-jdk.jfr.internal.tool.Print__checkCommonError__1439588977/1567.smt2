(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3278 0)
(declare-sort var150 0)
(declare-sort var2066 0)
(declare-sort var3190 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var150_peek/625256415 (var150) var3190)
(declare-const null-var3278 var3278)
(declare-const null-var150 var150)
(declare-const null-String String)
(declare-const var1705 var3278) ; Statement: r12 := @this: jdk.jfr.internal.tool.Print 
(assert (not (= var1705 null-var3278)))
(declare-const var1103 var150) ; Statement: r1 := @parameter0: java.util.Deque 
(assert (not (= var1103 null-var150)))
(declare-const var2018 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2018 null-String)))
(declare-const var405 String) ; Statement: r7 := @parameter2: java.lang.String 
(assert (not (= var405 null-String)))
(define-const var3484 var3190 (var150_peek/625256415 var1103)) ; Statement: $r2 = interfaceinvoke r1.<java.util.Deque: java.lang.Object peek()>() 
(assert true)
(define-const var1924 Bool false) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var1924 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var150_peek/625256415=([java.util.Deque], java.lang.Object)}
; {var3278=jdk.jfr.internal.tool.Print, var1705=r12, var150=java.util.Deque, var1103=r1, var2018=r0, var2066=null_type, var405=r7, var3190=java.lang.Object, var3484=$r2, var1924=$z0}
; {jdk.jfr.internal.tool.Print=var3278, r12=var1705, java.util.Deque=var150, r1=var1103, r0=var2018, null_type=var2066, r7=var405, java.lang.Object=var3190, $r2=var3484, $z0=var1924}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r12 := @this: jdk.jfr.internal.tool.Print;	r1 := @parameter0: java.util.Deque;	r0 := @parameter1: java.lang.String;	r7 := @parameter2: java.lang.String;	$r2 = interfaceinvoke r1.<java.util.Deque: java.lang.Object peek()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto return;	return
;block_num 2