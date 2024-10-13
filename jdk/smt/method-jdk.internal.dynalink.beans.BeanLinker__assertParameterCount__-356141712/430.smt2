(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3460 0)
(declare-sort var2450 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3460_getMethodType/-466914787 (var3460) var2450)
(declare-fun parameterCount/-1075445345 (var2450) Int)
(declare-const null-var3460 var3460)
(declare-const null-Int Int)
(declare-const var2984 var3460) ; Statement: r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var2984 null-var3460)))
(declare-const var270 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var270 null-Int)))
(define-const var936 var2450 (var3460_getMethodType/-466914787 var2984)) ; Statement: $r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>() 
(assert true)
(define-const var2786 Int (parameterCount/-1075445345 var936)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.invoke.MethodType: int parameterCount()>() 
 ; Statement: if $i1 == i0 goto return 
(assert (= var2786 var270)) ; Cond: $i1 == i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3460_getMethodType/-466914787=([jdk.internal.dynalink.CallSiteDescriptor], java.lang.invoke.MethodType), parameterCount/-1075445345=([java.lang.invoke.MethodType], int)}
; {var3460=jdk.internal.dynalink.CallSiteDescriptor, var2984=r0, var270=i0, var2450=java.lang.invoke.MethodType, var936=$r1, var2786=$i1}
; {jdk.internal.dynalink.CallSiteDescriptor=var3460, r0=var2984, i0=var270, java.lang.invoke.MethodType=var2450, $r1=var936, $i1=var2786}
;seq 
;cnt {}
;stmts r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	i0 := @parameter1: int;	$r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>();	$i1 = virtualinvoke $r1.<java.lang.invoke.MethodType: int parameterCount()>();	if $i1 == i0 goto return;	return
;block_num 2