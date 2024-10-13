(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1618 0)
(declare-sort var2824 0)
(declare-sort var1801 0)
(declare-sort var975 0)
(declare-sort var3143 0)
(declare-sort var3974 0)
(declare-sort var2509 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3143_explicitInstanceOfCheck/534363824 (var2824 var1801) Bool)
(declare-fun var2824_getNameToken/-1004068127 (var2824 Int) String)
(declare-fun var3974_isApplyToCall/-319884099 (var2824) Bool)
(declare-fun var1801_isCallSiteUnstable/566440058 (var1801) Bool)
(declare-fun hasWithScope/-803769986 (var1618) Bool)
(declare-fun var1618_findMegaMorphicGetMethod/1727940406 (var2824 String Bool) var2509)
(declare-const null-var1618 var1618)
(declare-const null-var2824 var2824)
(declare-const null-var1801 var1801)
(declare-const null-String String)
(declare-const var3174 var1618) ; Statement: r5 := @this: jdk.nashorn.internal.runtime.ScriptObject 
(assert (not (= var3174 null-var1618)))
(declare-const var420 var2824) ; Statement: r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var420 null-var2824)))
(declare-const var18 var1801) ; Statement: r1 := @parameter1: jdk.internal.dynalink.linker.LinkRequest 
(assert (not (= var18 null-var1801)))
(declare-const var2754 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2754 null-String)))
(define-const var2842 Bool (var3143_explicitInstanceOfCheck/534363824 var420 var18)) ; Statement: z0 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornGuards: boolean explicitInstanceOfCheck(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r1) 
(define-const var3971 String (var2824_getNameToken/-1004068127 var420 2)) ; Statement: r28 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.String getNameToken(int)>(2) 
(define-const var1457 Bool (var3974_isApplyToCall/-319884099 var420)) ; Statement: $z1 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean isApplyToCall(jdk.internal.dynalink.CallSiteDescriptor)>(r0) 
 ; Statement: if $z1 == 0 goto $z13 = interfaceinvoke r1.<jdk.internal.dynalink.linker.LinkRequest: boolean isCallSiteUnstable()>() 
(assert (= (ite var1457 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2064 Bool (var1801_isCallSiteUnstable/566440058 var18)) ; Statement: $z13 = interfaceinvoke r1.<jdk.internal.dynalink.linker.LinkRequest: boolean isCallSiteUnstable()>() 
 ; Statement: if $z13 != 0 goto $r3 = "getMethod" 
(assert (not (not (= (ite var2064 1 0) 0)))) ; Negate: Cond: $z13 != 0  
(assert true)
(define-const var789 Bool (hasWithScope/-803769986 var3174)) ; Statement: $z3 = virtualinvoke r5.<jdk.nashorn.internal.runtime.ScriptObject: boolean hasWithScope()>() 
 ; Statement: if $z3 == 0 goto r6 = virtualinvoke r5.<jdk.nashorn.internal.runtime.ScriptObject: jdk.nashorn.internal.runtime.FindProperty findProperty(java.lang.String,boolean)>(r28, 1) 
(assert (not (= (ite var789 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var3504 String "getMethod") ; Statement: $r3 = "getMethod" 
(assert true)
(define-const var3961 Bool (= var3504 var2754)) ; Statement: $z2 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
(define-const var814 var2509 (var1618_findMegaMorphicGetMethod/1727940406 var420 var3971 var3961)) ; Statement: $r4 = staticinvoke <jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findMegaMorphicGetMethod(jdk.internal.dynalink.CallSiteDescriptor,java.lang.String,boolean)>(r0, r28, $z2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3143_explicitInstanceOfCheck/534363824=([jdk.internal.dynalink.CallSiteDescriptor, jdk.internal.dynalink.linker.LinkRequest], boolean), var2824_getNameToken/-1004068127=([jdk.internal.dynalink.CallSiteDescriptor, int], java.lang.String), var3974_isApplyToCall/-319884099=([jdk.internal.dynalink.CallSiteDescriptor], boolean), var1801_isCallSiteUnstable/566440058=([jdk.internal.dynalink.linker.LinkRequest], boolean), hasWithScope/-803769986=([jdk.nashorn.internal.runtime.ScriptObject], boolean), var1618_findMegaMorphicGetMethod/1727940406=([jdk.internal.dynalink.CallSiteDescriptor, java.lang.String, boolean], jdk.internal.dynalink.linker.GuardedInvocation)}
; {var1618=jdk.nashorn.internal.runtime.ScriptObject, var3174=r5, var2824=jdk.internal.dynalink.CallSiteDescriptor, var420=r0, var1801=jdk.internal.dynalink.linker.LinkRequest, var18=r1, var2754=r2, var975=null_type, var3143=jdk.nashorn.internal.runtime.linker.NashornGuards, var2842=z0, var3971=r28, var3974=jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor, var1457=$z1, var2064=$z13, var789=$z3, var3504=$r3, var3961=$z2, var2509=jdk.internal.dynalink.linker.GuardedInvocation, var814=$r4}
; {jdk.nashorn.internal.runtime.ScriptObject=var1618, r5=var3174, jdk.internal.dynalink.CallSiteDescriptor=var2824, r0=var420, jdk.internal.dynalink.linker.LinkRequest=var1801, r1=var18, r2=var2754, null_type=var975, jdk.nashorn.internal.runtime.linker.NashornGuards=var3143, z0=var2842, r28=var3971, jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor=var3974, $z1=var1457, $z13=var2064, $z3=var789, $r3=var3504, $z2=var3961, jdk.internal.dynalink.linker.GuardedInvocation=var2509, $r4=var814}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: jdk.nashorn.internal.runtime.ScriptObject;	r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	r1 := @parameter1: jdk.internal.dynalink.linker.LinkRequest;	r2 := @parameter2: java.lang.String;	z0 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornGuards: boolean explicitInstanceOfCheck(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r1);	r28 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.String getNameToken(int)>(2);	$z1 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean isApplyToCall(jdk.internal.dynalink.CallSiteDescriptor)>(r0);	if $z1 == 0 goto $z13 = interfaceinvoke r1.<jdk.internal.dynalink.linker.LinkRequest: boolean isCallSiteUnstable()>();	$z13 = interfaceinvoke r1.<jdk.internal.dynalink.linker.LinkRequest: boolean isCallSiteUnstable()>();	if $z13 != 0 goto $r3 = "getMethod";	$z3 = virtualinvoke r5.<jdk.nashorn.internal.runtime.ScriptObject: boolean hasWithScope()>();	if $z3 == 0 goto r6 = virtualinvoke r5.<jdk.nashorn.internal.runtime.ScriptObject: jdk.nashorn.internal.runtime.FindProperty findProperty(java.lang.String,boolean)>(r28, 1);	$r3 = "getMethod";	$z2 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	$r4 = staticinvoke <jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findMegaMorphicGetMethod(jdk.internal.dynalink.CallSiteDescriptor,java.lang.String,boolean)>(r0, r28, $z2);	return $r4
;block_num 4