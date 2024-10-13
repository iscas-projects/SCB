(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var705 0)
(declare-sort var2465 0)
(declare-sort var3556 0)
(declare-sort var3897 0)
(declare-sort var1791 0)
(declare-sort var3116 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2465_getNameToken/-1004068127 (var2465 Int) String)
(declare-fun findGetMethod/1624546738 (var3116 var2465 var3556 String) var1791)
(declare-fun cast-from-var705-to-var3116 (var705) var3116)
(declare-const null-var705 var705)
(declare-const null-var2465 var2465)
(declare-const null-var3556 var3556)
(declare-const null-String String)
(declare-const var1608 var705) ; Statement: r3 := @this: jdk.nashorn.internal.objects.NativeString 
(assert (not (= var1608 null-var705)))
(declare-const var1702 var2465) ; Statement: r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var1702 null-var2465)))
(declare-const var3569 var3556) ; Statement: r4 := @parameter1: jdk.internal.dynalink.linker.LinkRequest 
(assert (not (= var3569 null-var3556)))
(declare-const var3147 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var3147 null-String)))
(define-const var1174 String (var2465_getNameToken/-1004068127 var1702 2)) ; Statement: r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.String getNameToken(int)>(2) 
(define-const var3499 String "length") ; Statement: $r2 = "length" 
(assert true)
(define-const var189 Bool (= var3499 var1174)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r6 = specialinvoke r3.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest,java.lang.String)>(r0, r4, r5) 
(assert (= (ite var189 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2613 var1791 (findGetMethod/1624546738 (cast-from-var705-to-var3116 var1608) var1702 var3569 var3147)) ; Statement: $r6 = specialinvoke r3.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest,java.lang.String)>(r0, r4, r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2465_getNameToken/-1004068127=([jdk.internal.dynalink.CallSiteDescriptor, int], java.lang.String), findGetMethod/1624546738=([jdk.nashorn.internal.runtime.ScriptObject, jdk.internal.dynalink.CallSiteDescriptor, jdk.internal.dynalink.linker.LinkRequest, java.lang.String], jdk.internal.dynalink.linker.GuardedInvocation), cast-from-var705-to-var3116=([jdk.nashorn.internal.objects.NativeString], jdk.nashorn.internal.runtime.ScriptObject)}
; {var705=jdk.nashorn.internal.objects.NativeString, var1608=r3, var2465=jdk.internal.dynalink.CallSiteDescriptor, var1702=r0, var3556=jdk.internal.dynalink.linker.LinkRequest, var3569=r4, var3147=r5, var3897=null_type, var1174=r1, var3499=$r2, var189=$z0, var1791=jdk.internal.dynalink.linker.GuardedInvocation, var3116=jdk.nashorn.internal.runtime.ScriptObject, var2613=$r6}
; {jdk.nashorn.internal.objects.NativeString=var705, r3=var1608, jdk.internal.dynalink.CallSiteDescriptor=var2465, r0=var1702, jdk.internal.dynalink.linker.LinkRequest=var3556, r4=var3569, r5=var3147, null_type=var3897, r1=var1174, $r2=var3499, $z0=var189, jdk.internal.dynalink.linker.GuardedInvocation=var1791, jdk.nashorn.internal.runtime.ScriptObject=var3116, $r6=var2613}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: jdk.nashorn.internal.objects.NativeString;	r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	r4 := @parameter1: jdk.internal.dynalink.linker.LinkRequest;	r5 := @parameter2: java.lang.String;	r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.String getNameToken(int)>(2);	$r2 = "length";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r6 = specialinvoke r3.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest,java.lang.String)>(r0, r4, r5);	$r6 = specialinvoke r3.<jdk.nashorn.internal.runtime.ScriptObject: jdk.internal.dynalink.linker.GuardedInvocation findGetMethod(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest,java.lang.String)>(r0, r4, r5);	return $r6
;block_num 2