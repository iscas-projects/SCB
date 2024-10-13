(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var834 0)
(declare-sort var2847 0)
(declare-sort var2434 0)
(declare-sort var3396 0)
(declare-sort var3217 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun obj/-984955982 (var834) var2434)
(declare-fun var2434_getMember/1860153090 (var2434 String) var3396)
(declare-fun var3217_isCallable/-814261722 (var3396) Bool)
(declare-const null-var834 var834)
(declare-const null-String String)
(declare-const var3077 var834) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.ListAdapter 
(assert (not (= var3077 null-var834)))
(declare-const var3168 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3168 null-String)))
(define-const var3162 var2434 (obj/-984955982 var3077)) ; Statement: $r2 = r0.<jdk.nashorn.internal.runtime.ListAdapter: jdk.nashorn.api.scripting.JSObject obj> 
(define-const var3463 var3396 (var2434_getMember/1860153090 var3162 var3168)) ; Statement: r3 = interfaceinvoke $r2.<jdk.nashorn.api.scripting.JSObject: java.lang.Object getMember(java.lang.String)>(r1) 
(define-const var3533 Bool (var3217_isCallable/-814261722 var3463)) ; Statement: $z0 = staticinvoke <jdk.nashorn.internal.runtime.linker.Bootstrap: boolean isCallable(java.lang.Object)>(r3) 
 ; Statement: if $z0 != 0 goto return r3 
(assert (not (= (ite var3533 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {obj/-984955982=([jdk.nashorn.internal.runtime.ListAdapter], jdk.nashorn.api.scripting.JSObject), var2434_getMember/1860153090=([jdk.nashorn.api.scripting.JSObject, java.lang.String], java.lang.Object), var3217_isCallable/-814261722=([java.lang.Object], boolean)}
; {var834=jdk.nashorn.internal.runtime.ListAdapter, var3077=r0, var3168=r1, var2847=null_type, var2434=jdk.nashorn.api.scripting.JSObject, var3162=$r2, var3396=java.lang.Object, var3463=r3, var3217=jdk.nashorn.internal.runtime.linker.Bootstrap, var3533=$z0}
; {jdk.nashorn.internal.runtime.ListAdapter=var834, r0=var3077, r1=var3168, null_type=var2847, jdk.nashorn.api.scripting.JSObject=var2434, $r2=var3162, java.lang.Object=var3396, r3=var3463, jdk.nashorn.internal.runtime.linker.Bootstrap=var3217, $z0=var3533}
;seq 
;cnt {}
;stmts r0 := @this: jdk.nashorn.internal.runtime.ListAdapter;	r1 := @parameter0: java.lang.String;	$r2 = r0.<jdk.nashorn.internal.runtime.ListAdapter: jdk.nashorn.api.scripting.JSObject obj>;	r3 = interfaceinvoke $r2.<jdk.nashorn.api.scripting.JSObject: java.lang.Object getMember(java.lang.String)>(r1);	$z0 = staticinvoke <jdk.nashorn.internal.runtime.linker.Bootstrap: boolean isCallable(java.lang.Object)>(r3);	if $z0 != 0 goto return r3;	return r3
;block_num 2