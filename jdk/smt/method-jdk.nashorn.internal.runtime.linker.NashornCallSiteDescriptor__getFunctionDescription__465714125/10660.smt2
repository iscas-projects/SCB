(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var155 0)
(declare-sort var1160 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFirstOperator/-1683874211 (var155) String)
(declare-fun var1160-init () var1160)
(declare-fun <init>/-208190597 (var1160) void)
(declare-const null-var155 var155)
(declare-const var155-$assertionsDisabled Bool)
(declare-const var1089 var155) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor 
(assert (not (= var1089 null-var155)))
(define-const var3786 Bool var155-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $i0 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: int getNameTokenCount()>() 
(assert (not (not (= (ite var3786 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var1550 String (getFirstOperator/-1683874211 var1089)) ; Statement: $r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String getFirstOperator()>() 
(assert true)
(define-const var770 Bool (= var1550 "call")) ; Statement: $z1 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("call") 
 ; Statement: if $z1 != 0 goto $i0 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: int getNameTokenCount()>() 
(assert (not (not (= (ite var770 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(assert true)
(define-const var1444 String (getFirstOperator/-1683874211 var1089)) ; Statement: $r2 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String getFirstOperator()>() 
(assert true)
(define-const var1121 Bool (= var1444 "new")) ; Statement: $z2 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>("new") 
 ; Statement: if $z2 != 0 goto $i0 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: int getNameTokenCount()>() 
(assert (not (not (= (ite var1121 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var1500 var1160 var1160-init) ; Statement: $r3 = new java.lang.AssertionError 
(assert true)
;(assert (<init>/-208190597 var1500)) ; Statement: specialinvoke $r3.<java.lang.AssertionError: void <init>()>() 

(declare-const var1500!1 var1160)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getFirstOperator/-1683874211=([jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor], java.lang.String), var1160-init=([], java.lang.AssertionError), <init>/-208190597=([java.lang.AssertionError], void)}
; {var155=jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor, var1089=r0, var3786=$z0, var1550=$r1, var770=$z1, var1444=$r2, var1121=$z2, var1160=java.lang.AssertionError, var1500=$r3}
; {jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor=var155, r0=var1089, $z0=var3786, $r1=var1550, $z1=var770, $r2=var1444, $z2=var1121, java.lang.AssertionError=var1160, $r3=var1500}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor;	$z0 = <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean $assertionsDisabled>;	if $z0 != 0 goto $i0 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: int getNameTokenCount()>();	$r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String getFirstOperator()>();	$z1 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("call");	if $z1 != 0 goto $i0 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: int getNameTokenCount()>();	$r2 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String getFirstOperator()>();	$z2 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>("new");	if $z2 != 0 goto $i0 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: int getNameTokenCount()>();	$r3 = new java.lang.AssertionError;	specialinvoke $r3.<java.lang.AssertionError: void <init>()>();	throw $r3
;block_num 4