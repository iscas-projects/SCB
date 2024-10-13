(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1979 0)
(declare-sort var1845 0)
(declare-sort var2609 0)
(declare-sort var515 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFirstOperator/-1683874211 (var1979) String)
(declare-fun var515_fixReceiverType/1588053872 (var1845 var2609) var1845)
(declare-fun arr-var2609-init () (Array Int var2609))
(declare-fun filterArguments/912909767 (var1845 Int (Array Int var2609)) var1845)
(declare-const null-var1979 var1979)
(declare-const null-var1845 var1845)
(declare-const var515-WITHEXPRESSIONFILTER var2609)
(declare-const null-__Array__Int__var2609__ (Array Int var2609))
(declare-const var1318 var1979) ; Statement: r0 := @parameter0: jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor 
(assert (not (= var1318 null-var1979)))
(declare-const var1714 var1845) ; Statement: r3 := @parameter1: jdk.internal.dynalink.linker.GuardedInvocation 
(assert (not (= var1714 null-var1845)))
(define-const var1002 String "getMethod") ; Statement: $r2 = "getMethod" 
(assert true)
(define-const var3882 String (getFirstOperator/-1683874211 var1318)) ; Statement: $r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String getFirstOperator()>() 
(assert true)
(define-const var3771 Bool (= var1002 var3882)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 != 0 goto r4 = virtualinvoke r3.<jdk.internal.dynalink.linker.GuardedInvocation: java.lang.invoke.MethodHandle getInvocation()>() 
(assert (not (not (= (ite var3771 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1169 var2609 var515-WITHEXPRESSIONFILTER) ; Statement: $r8 = <jdk.nashorn.internal.runtime.WithObject: java.lang.invoke.MethodHandle WITHEXPRESSIONFILTER> 
(define-const var3239 var1845 (var515_fixReceiverType/1588053872 var1714 var1169)) ; Statement: $r11 = staticinvoke <jdk.nashorn.internal.runtime.WithObject: jdk.internal.dynalink.linker.GuardedInvocation fixReceiverType(jdk.internal.dynalink.linker.GuardedInvocation,java.lang.invoke.MethodHandle)>(r3, $r8) 
(define-const var1815 (Array Int var2609) arr-var2609-init) ; Statement: $r9 = newarray (java.lang.invoke.MethodHandle)[1] 
(define-const var2850 var2609 var515-WITHEXPRESSIONFILTER) ; Statement: $r10 = <jdk.nashorn.internal.runtime.WithObject: java.lang.invoke.MethodHandle WITHEXPRESSIONFILTER> 
(declare-const var1815!1 (Array Int var2609))
(assert (not (= var1815!1 null-__Array__Int__var2609__)))
(assert (= (select var1815!1 0) var2850)) ; Statement: $r9[0] = $r10 
(assert true)
(define-const var3971 var1845 (filterArguments/912909767 var3239 0 var1815!1)) ; Statement: $r12 = virtualinvoke $r11.<jdk.internal.dynalink.linker.GuardedInvocation: jdk.internal.dynalink.linker.GuardedInvocation filterArguments(int,java.lang.invoke.MethodHandle[])>(0, $r9) 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getFirstOperator/-1683874211=([jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor], java.lang.String), var515_fixReceiverType/1588053872=([jdk.internal.dynalink.linker.GuardedInvocation, java.lang.invoke.MethodHandle], jdk.internal.dynalink.linker.GuardedInvocation), arr-var2609-init=([], java.lang.invoke.MethodHandle[]), filterArguments/912909767=([jdk.internal.dynalink.linker.GuardedInvocation, int, java.lang.invoke.MethodHandle[]], jdk.internal.dynalink.linker.GuardedInvocation)}
; {var1979=jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor, var1318=r0, var1845=jdk.internal.dynalink.linker.GuardedInvocation, var1714=r3, var1002=$r2, var3882=$r1, var3771=$z0, var2609=java.lang.invoke.MethodHandle, var515=jdk.nashorn.internal.runtime.WithObject, var1169=$r8, var3239=$r11, var1815=$r9, var2850=$r10, var3971=$r12}
; {jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor=var1979, r0=var1318, jdk.internal.dynalink.linker.GuardedInvocation=var1845, r3=var1714, $r2=var1002, $r1=var3882, $z0=var3771, java.lang.invoke.MethodHandle=var2609, jdk.nashorn.internal.runtime.WithObject=var515, $r8=var1169, $r11=var3239, $r9=var1815, $r10=var2850, $r12=var3971}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor;	r3 := @parameter1: jdk.internal.dynalink.linker.GuardedInvocation;	$r2 = "getMethod";	$r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String getFirstOperator()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 != 0 goto r4 = virtualinvoke r3.<jdk.internal.dynalink.linker.GuardedInvocation: java.lang.invoke.MethodHandle getInvocation()>();	$r8 = <jdk.nashorn.internal.runtime.WithObject: java.lang.invoke.MethodHandle WITHEXPRESSIONFILTER>;	$r11 = staticinvoke <jdk.nashorn.internal.runtime.WithObject: jdk.internal.dynalink.linker.GuardedInvocation fixReceiverType(jdk.internal.dynalink.linker.GuardedInvocation,java.lang.invoke.MethodHandle)>(r3, $r8);	$r9 = newarray (java.lang.invoke.MethodHandle)[1];	$r10 = <jdk.nashorn.internal.runtime.WithObject: java.lang.invoke.MethodHandle WITHEXPRESSIONFILTER>;	$r9[0] = $r10;	$r12 = virtualinvoke $r11.<jdk.internal.dynalink.linker.GuardedInvocation: jdk.internal.dynalink.linker.GuardedInvocation filterArguments(int,java.lang.invoke.MethodHandle[])>(0, $r9);	return $r12
;block_num 2