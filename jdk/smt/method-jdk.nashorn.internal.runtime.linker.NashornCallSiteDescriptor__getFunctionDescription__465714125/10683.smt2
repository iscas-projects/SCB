(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2500 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNameTokenCount/746314320 (var2500) Int)
(declare-fun getNameToken/-166591370 (var2500 Int) String)
(declare-const null-var2500 var2500)
(declare-const var2500-$assertionsDisabled Bool)
(declare-const var1584 var2500) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor 
(assert (not (= var1584 null-var2500)))
(define-const var3593 Bool var2500-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $i0 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: int getNameTokenCount()>() 
(assert (not (= (ite var3593 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var1514 Int (getNameTokenCount/746314320 var1584)) ; Statement: $i0 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: int getNameTokenCount()>() 
 ; Statement: if $i0 <= 2 goto $r4 = null 
(assert (not (<= var1514 2))) ; Negate: Cond: $i0 <= 2  
(assert true)
(define-const var3143 String (getNameToken/-166591370 var1584 2)) ; Statement: $r4 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String getNameToken(int)>(2) 
 ; Statement: goto [?= return $r4] 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getNameTokenCount/746314320=([jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor], int), getNameToken/-166591370=([jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor, int], java.lang.String)}
; {var2500=jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor, var1584=r0, var3593=$z0, var1514=$i0, var3143=$r4}
; {jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor=var2500, r0=var1584, $z0=var3593, $i0=var1514, $r4=var3143}
;seq 
;cnt {}
;stmts r0 := @this: jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor;	$z0 = <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean $assertionsDisabled>;	if $z0 != 0 goto $i0 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: int getNameTokenCount()>();	$i0 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: int getNameTokenCount()>();	if $i0 <= 2 goto $r4 = null;	$r4 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String getNameToken(int)>(2);	goto [?= return $r4];	return $r4
;block_num 4