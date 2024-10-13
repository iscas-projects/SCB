(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var145 0)
(declare-sort var2256 0)
(declare-sort var257 0)
(declare-sort var648 0)
(declare-sort var3003 0)
(declare-sort var1365 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var648) String)
(declare-fun propertySetters/183805422 (var145) var3003)
(declare-fun getDynamicMethodInvocation/-1558826023 (var145 var2256 var257 String var3003) var1365)
(declare-const null-var145 var145)
(declare-const null-var2256 var2256)
(declare-const null-var257 var257)
(declare-const null-var648 var648)
(declare-const var3808 var145) ; Statement: r0 := @this: jdk.internal.dynalink.beans.AbstractJavaLinker 
(assert (not (= var3808 null-var145)))
(declare-const var2045 var2256) ; Statement: r1 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var2045 null-var2256)))
(declare-const var2831 var257) ; Statement: r2 := @parameter1: jdk.internal.dynalink.linker.LinkerServices 
(assert (not (= var2831 null-var257)))
(declare-const var908 var648) ; Statement: r3 := @parameter2: java.lang.Object 
(assert (not (= var908 null-var648)))
(define-const var1334 String (String_valueOf/-333372740 var908)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r3) 
(define-const var2002 var3003 (propertySetters/183805422 var3808)) ; Statement: $r4 = r0.<jdk.internal.dynalink.beans.AbstractJavaLinker: java.util.Map propertySetters> 
(assert true)
(define-const var184 var1365 (getDynamicMethodInvocation/-1558826023 var3808 var2045 var2831 var1334 var2002)) ; Statement: $r6 = specialinvoke r0.<jdk.internal.dynalink.beans.AbstractJavaLinker: java.lang.invoke.MethodHandle getDynamicMethodInvocation(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkerServices,java.lang.String,java.util.Map)>(r1, r2, $r5, $r4) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), propertySetters/183805422=([jdk.internal.dynalink.beans.AbstractJavaLinker], java.util.Map), getDynamicMethodInvocation/-1558826023=([jdk.internal.dynalink.beans.AbstractJavaLinker, jdk.internal.dynalink.CallSiteDescriptor, jdk.internal.dynalink.linker.LinkerServices, java.lang.String, java.util.Map], java.lang.invoke.MethodHandle)}
; {var145=jdk.internal.dynalink.beans.AbstractJavaLinker, var3808=r0, var2256=jdk.internal.dynalink.CallSiteDescriptor, var2045=r1, var257=jdk.internal.dynalink.linker.LinkerServices, var2831=r2, var648=java.lang.Object, var908=r3, var1334=$r5, var3003=java.util.Map, var2002=$r4, var1365=java.lang.invoke.MethodHandle, var184=$r6}
; {jdk.internal.dynalink.beans.AbstractJavaLinker=var145, r0=var3808, jdk.internal.dynalink.CallSiteDescriptor=var2256, r1=var2045, jdk.internal.dynalink.linker.LinkerServices=var257, r2=var2831, java.lang.Object=var648, r3=var908, $r5=var1334, java.util.Map=var3003, $r4=var2002, java.lang.invoke.MethodHandle=var1365, $r6=var184}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.internal.dynalink.beans.AbstractJavaLinker;	r1 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	r2 := @parameter1: jdk.internal.dynalink.linker.LinkerServices;	r3 := @parameter2: java.lang.Object;	$r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r3);	$r4 = r0.<jdk.internal.dynalink.beans.AbstractJavaLinker: java.util.Map propertySetters>;	$r6 = specialinvoke r0.<jdk.internal.dynalink.beans.AbstractJavaLinker: java.lang.invoke.MethodHandle getDynamicMethodInvocation(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkerServices,java.lang.String,java.util.Map)>(r1, r2, $r5, $r4);	return $r6
;block_num 1