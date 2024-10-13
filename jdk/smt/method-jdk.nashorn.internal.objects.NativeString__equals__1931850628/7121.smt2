(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var821 0)
(declare-sort var2370 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var821 var821)
(declare-const null-var2370 var2370)
(declare-const var257 var821) ; Statement: r1 := @this: jdk.nashorn.internal.objects.NativeString 
(assert (not (= var257 null-var821)))
(declare-const var380 var2370) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var380 null-var2370)))
(define-const var3028 Bool false) ; Statement: $z0 = r0 instanceof jdk.nashorn.internal.objects.NativeString 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var3028 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var821=jdk.nashorn.internal.objects.NativeString, var257=r1, var2370=java.lang.Object, var380=r0, var3028=$z0}
; {jdk.nashorn.internal.objects.NativeString=var821, r1=var257, java.lang.Object=var2370, r0=var380, $z0=var3028}
;seq 
;cnt {}
;stmts r1 := @this: jdk.nashorn.internal.objects.NativeString;	r0 := @parameter0: java.lang.Object;	$z0 = r0 instanceof jdk.nashorn.internal.objects.NativeString;	if $z0 == 0 goto return 0;	return 0
;block_num 2