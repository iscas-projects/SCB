(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var551 0)
(declare-sort var1220 0)
(declare-sort var2623 0)
(declare-sort var3849 0)
(declare-sort var1837 0)
(declare-sort var3363 0)
(declare-sort var3118 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1837_explicitInstanceOfCheck/534363824 (var1220 var2623) Bool)
(declare-fun var1220_getNameToken/-1004068127 (var1220 Int) String)
(declare-fun var3363_isApplyToCall/-319884099 (var1220) Bool)
(declare-fun var2623_isCallSiteUnstable/566440058 (var2623) Bool)
(declare-fun var551_findMegaMorphicGetMethod/1727940406 (var1220 String Bool) var3118)
(declare-const null-var551 var551)
(declare-const null-var1220 var1220)
(declare-const null-var2623 var2623)
(declare-const null-String String)
(declare-const var1705 var551) ; Statement: r5 := @this: jdk.nashorn.internal.runtime.ScriptObject 
(assert (not (= var1705 null-var551)))
(declare-const var1534 var1220) ; Statement: r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var1534 null-var1220)))
(declare-const var3762 var2623) ; Statement: r1 := @parameter1: jdk.internal.dynalink.linker.LinkRequest 
(assert (not (= var3762 null-var2623)))
(declare-const var2654 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2654 null-String)))
(define-const var235 Bool (var1837_explicitInstanceOfCheck/534363824 var1534 var3762)) ; Statement: z0 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornGuards: boolean explicitInstanceOfCheck(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r1) 
(define-const var1155 String (var1220_getNameToken/-1004068127 var1534 2)) ; Statement: r28 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.String getNameToken(int)>(2) 
(define-const var2059 Bool (var3363_isApplyToCall/-319884099 var1534)) ; Statement: $z1 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean isApplyToCall(jdk.internal.dynalink.CallSiteDescriptor)>(r0) 
 ; Statement: if $z1 == 0 goto $z13 = interfaceinvoke r1.<jdk.internal.dynalink.linker.LinkRequest: boolean isCallSiteUnstable()>() 
(assert (= (ite var2059 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3265 Bool (var2623_isCallSiteUnstable/566440058 var3762)) ; Statement: $z13 = interfaceinvoke r1.<jdk.internal.dynalink.linker.LinkRequest: boolean isCallSiteUnstable()>() 
 ; Statement: if $z13 != 0 goto $r3 = "getMethod" 
(assert (not (= (ite var3265 1 0) 0))) ; Cond: $z13 != 0 
(define-const var1160 String "getMethod") ; Statement: $r3 = "getMethod" 
(assert true)
(define-const var2271 Bool (= var1160 var2654)) ; Statement: $z2 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
(define-const var684 var3118 (var551_findMegaMorphicGetMethod/1727940406 var1534 var1155 var2271)) ; Statement: $r4 = staticinvoke <jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findMegaMorphicGetMethod(jdk.internal.dynalink.CallSiteDescriptor,java.lang.String,boolean)>(r0, r28, $z2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1837_explicitInstanceOfCheck/534363824=([jdk.internal.dynalink.CallSiteDescriptor, jdk.internal.dynalink.linker.LinkRequest], boolean), var1220_getNameToken/-1004068127=([jdk.internal.dynalink.CallSiteDescriptor, int], java.lang.String), var3363_isApplyToCall/-319884099=([jdk.internal.dynalink.CallSiteDescriptor], boolean), var2623_isCallSiteUnstable/566440058=([jdk.internal.dynalink.linker.LinkRequest], boolean), var551_findMegaMorphicGetMethod/1727940406=([jdk.internal.dynalink.CallSiteDescriptor, java.lang.String, boolean], jdk.internal.dynalink.linker.GuardedInvocation)}
; {var551=jdk.nashorn.internal.runtime.ScriptObject, var1705=r5, var1220=jdk.internal.dynalink.CallSiteDescriptor, var1534=r0, var2623=jdk.internal.dynalink.linker.LinkRequest, var3762=r1, var2654=r2, var3849=null_type, var1837=jdk.nashorn.internal.runtime.linker.NashornGuards, var235=z0, var1155=r28, var3363=jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor, var2059=$z1, var3265=$z13, var1160=$r3, var2271=$z2, var3118=jdk.internal.dynalink.linker.GuardedInvocation, var684=$r4}
; {jdk.nashorn.internal.runtime.ScriptObject=var551, r5=var1705, jdk.internal.dynalink.CallSiteDescriptor=var1220, r0=var1534, jdk.internal.dynalink.linker.LinkRequest=var2623, r1=var3762, r2=var2654, null_type=var3849, jdk.nashorn.internal.runtime.linker.NashornGuards=var1837, z0=var235, r28=var1155, jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor=var3363, $z1=var2059, $z13=var3265, $r3=var1160, $z2=var2271, jdk.internal.dynalink.linker.GuardedInvocation=var3118, $r4=var684}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: jdk.nashorn.internal.runtime.ScriptObject;	r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	r1 := @parameter1: jdk.internal.dynalink.linker.LinkRequest;	r2 := @parameter2: java.lang.String;	z0 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornGuards: boolean explicitInstanceOfCheck(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r1);	r28 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.String getNameToken(int)>(2);	$z1 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean isApplyToCall(jdk.internal.dynalink.CallSiteDescriptor)>(r0);	if $z1 == 0 goto $z13 = interfaceinvoke r1.<jdk.internal.dynalink.linker.LinkRequest: boolean isCallSiteUnstable()>();	$z13 = interfaceinvoke r1.<jdk.internal.dynalink.linker.LinkRequest: boolean isCallSiteUnstable()>();	if $z13 != 0 goto $r3 = "getMethod";	$r3 = "getMethod";	$z2 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	$r4 = staticinvoke <jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findMegaMorphicGetMethod(jdk.internal.dynalink.CallSiteDescriptor,java.lang.String,boolean)>(r0, r28, $z2);	return $r4
;block_num 3