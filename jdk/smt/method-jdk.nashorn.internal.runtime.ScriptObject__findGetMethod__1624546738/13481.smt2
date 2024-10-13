(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1467 0)
(declare-sort var590 0)
(declare-sort var649 0)
(declare-sort var2873 0)
(declare-sort var3498 0)
(declare-sort var3322 0)
(declare-sort var530 0)
(declare-sort var3149 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3498_explicitInstanceOfCheck/534363824 (var590 var649) Bool)
(declare-fun var590_getNameToken/-1004068127 (var590 Int) String)
(declare-fun var3322_isApplyToCall/-319884099 (var590) Bool)
(declare-fun var530_isBuiltinFunctionPrototypeApply/-1829255384 () Bool)
(declare-fun var649_isCallSiteUnstable/566440058 (var649) Bool)
(declare-fun var1467_findMegaMorphicGetMethod/1727940406 (var590 String Bool) var3149)
(declare-const null-var1467 var1467)
(declare-const null-var590 var590)
(declare-const null-var649 var649)
(declare-const null-String String)
(declare-const var2450 var1467) ; Statement: r5 := @this: jdk.nashorn.internal.runtime.ScriptObject 
(assert (not (= var2450 null-var1467)))
(declare-const var2761 var590) ; Statement: r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var2761 null-var590)))
(declare-const var657 var649) ; Statement: r1 := @parameter1: jdk.internal.dynalink.linker.LinkRequest 
(assert (not (= var657 null-var649)))
(declare-const var198 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var198 null-String)))
(define-const var1079 Bool (var3498_explicitInstanceOfCheck/534363824 var2761 var657)) ; Statement: z0 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornGuards: boolean explicitInstanceOfCheck(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r1) 
(define-const var3388 String (var590_getNameToken/-1004068127 var2761 2)) ; Statement: r28 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.String getNameToken(int)>(2) 
(define-const var319 Bool (var3322_isApplyToCall/-319884099 var2761)) ; Statement: $z1 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean isApplyToCall(jdk.internal.dynalink.CallSiteDescriptor)>(r0) 
 ; Statement: if $z1 == 0 goto $z13 = interfaceinvoke r1.<jdk.internal.dynalink.linker.LinkRequest: boolean isCallSiteUnstable()>() 
(assert (not (= (ite var319 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2970 Bool var530_isBuiltinFunctionPrototypeApply/-1829255384) ; Statement: $z12 = staticinvoke <jdk.nashorn.internal.objects.Global: boolean isBuiltinFunctionPrototypeApply()>() 
 ; Statement: if $z12 == 0 goto $z13 = interfaceinvoke r1.<jdk.internal.dynalink.linker.LinkRequest: boolean isCallSiteUnstable()>() 
(assert (= (ite var2970 1 0) 0)) ; Cond: $z12 == 0 
(define-const var2683 Bool (var649_isCallSiteUnstable/566440058 var657)) ; Statement: $z13 = interfaceinvoke r1.<jdk.internal.dynalink.linker.LinkRequest: boolean isCallSiteUnstable()>() 
 ; Statement: if $z13 != 0 goto $r3 = "getMethod" 
(assert (not (= (ite var2683 1 0) 0))) ; Cond: $z13 != 0 
(define-const var1291 String "getMethod") ; Statement: $r3 = "getMethod" 
(assert true)
(define-const var1378 Bool (= var1291 var198)) ; Statement: $z2 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
(define-const var484 var3149 (var1467_findMegaMorphicGetMethod/1727940406 var2761 var3388 var1378)) ; Statement: $r4 = staticinvoke <jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findMegaMorphicGetMethod(jdk.internal.dynalink.CallSiteDescriptor,java.lang.String,boolean)>(r0, r28, $z2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3498_explicitInstanceOfCheck/534363824=([jdk.internal.dynalink.CallSiteDescriptor, jdk.internal.dynalink.linker.LinkRequest], boolean), var590_getNameToken/-1004068127=([jdk.internal.dynalink.CallSiteDescriptor, int], java.lang.String), var3322_isApplyToCall/-319884099=([jdk.internal.dynalink.CallSiteDescriptor], boolean), var530_isBuiltinFunctionPrototypeApply/-1829255384=([], boolean), var649_isCallSiteUnstable/566440058=([jdk.internal.dynalink.linker.LinkRequest], boolean), var1467_findMegaMorphicGetMethod/1727940406=([jdk.internal.dynalink.CallSiteDescriptor, java.lang.String, boolean], jdk.internal.dynalink.linker.GuardedInvocation)}
; {var1467=jdk.nashorn.internal.runtime.ScriptObject, var2450=r5, var590=jdk.internal.dynalink.CallSiteDescriptor, var2761=r0, var649=jdk.internal.dynalink.linker.LinkRequest, var657=r1, var198=r2, var2873=null_type, var3498=jdk.nashorn.internal.runtime.linker.NashornGuards, var1079=z0, var3388=r28, var3322=jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor, var319=$z1, var530=jdk.nashorn.internal.objects.Global, var2970=$z12, var2683=$z13, var1291=$r3, var1378=$z2, var3149=jdk.internal.dynalink.linker.GuardedInvocation, var484=$r4}
; {jdk.nashorn.internal.runtime.ScriptObject=var1467, r5=var2450, jdk.internal.dynalink.CallSiteDescriptor=var590, r0=var2761, jdk.internal.dynalink.linker.LinkRequest=var649, r1=var657, r2=var198, null_type=var2873, jdk.nashorn.internal.runtime.linker.NashornGuards=var3498, z0=var1079, r28=var3388, jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor=var3322, $z1=var319, jdk.nashorn.internal.objects.Global=var530, $z12=var2970, $z13=var2683, $r3=var1291, $z2=var1378, jdk.internal.dynalink.linker.GuardedInvocation=var3149, $r4=var484}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: jdk.nashorn.internal.runtime.ScriptObject;	r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	r1 := @parameter1: jdk.internal.dynalink.linker.LinkRequest;	r2 := @parameter2: java.lang.String;	z0 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornGuards: boolean explicitInstanceOfCheck(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r1);	r28 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.String getNameToken(int)>(2);	$z1 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean isApplyToCall(jdk.internal.dynalink.CallSiteDescriptor)>(r0);	if $z1 == 0 goto $z13 = interfaceinvoke r1.<jdk.internal.dynalink.linker.LinkRequest: boolean isCallSiteUnstable()>();	$z12 = staticinvoke <jdk.nashorn.internal.objects.Global: boolean isBuiltinFunctionPrototypeApply()>();	if $z12 == 0 goto $z13 = interfaceinvoke r1.<jdk.internal.dynalink.linker.LinkRequest: boolean isCallSiteUnstable()>();	$z13 = interfaceinvoke r1.<jdk.internal.dynalink.linker.LinkRequest: boolean isCallSiteUnstable()>();	if $z13 != 0 goto $r3 = "getMethod";	$r3 = "getMethod";	$z2 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	$r4 = staticinvoke <jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findMegaMorphicGetMethod(jdk.internal.dynalink.CallSiteDescriptor,java.lang.String,boolean)>(r0, r28, $z2);	return $r4
;block_num 4