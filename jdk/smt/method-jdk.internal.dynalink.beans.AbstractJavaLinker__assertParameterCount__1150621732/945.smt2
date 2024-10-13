(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var959 0)
(declare-sort var2401 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var959_getMethodType/-466914787 (var959) var2401)
(declare-fun parameterCount/-1075445345 (var2401) Int)
(declare-const null-var959 var959)
(declare-const null-Int Int)
(declare-const var1926 var959) ; Statement: r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var1926 null-var959)))
(declare-const var3861 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3861 null-Int)))
(define-const var2147 var2401 (var959_getMethodType/-466914787 var1926)) ; Statement: $r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>() 
(assert true)
(define-const var1788 Int (parameterCount/-1075445345 var2147)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.invoke.MethodType: int parameterCount()>() 
 ; Statement: if $i1 == i0 goto return 
(assert (= var1788 var3861)) ; Cond: $i1 == i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var959_getMethodType/-466914787=([jdk.internal.dynalink.CallSiteDescriptor], java.lang.invoke.MethodType), parameterCount/-1075445345=([java.lang.invoke.MethodType], int)}
; {var959=jdk.internal.dynalink.CallSiteDescriptor, var1926=r0, var3861=i0, var2401=java.lang.invoke.MethodType, var2147=$r1, var1788=$i1}
; {jdk.internal.dynalink.CallSiteDescriptor=var959, r0=var1926, i0=var3861, java.lang.invoke.MethodType=var2401, $r1=var2147, $i1=var1788}
;seq 
;cnt {}
;stmts r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	i0 := @parameter1: int;	$r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>();	$i1 = virtualinvoke $r1.<java.lang.invoke.MethodType: int parameterCount()>();	if $i1 == i0 goto return;	return
;block_num 2