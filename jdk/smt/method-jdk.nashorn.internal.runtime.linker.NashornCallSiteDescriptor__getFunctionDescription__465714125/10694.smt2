(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var711 0)
(declare-sort var1639 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNameTokenCount/746314320 (var711) Int)
(declare-const null-var711 var711)
(declare-const var711-$assertionsDisabled Bool)
(declare-const null-String String)
(declare-const var3283 var711) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor 
(assert (not (= var3283 null-var711)))
(define-const var56 Bool var711-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $i0 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: int getNameTokenCount()>() 
(assert (not (= (ite var56 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var286 Int (getNameTokenCount/746314320 var3283)) ; Statement: $i0 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: int getNameTokenCount()>() 
 ; Statement: if $i0 <= 2 goto $r4 = null 
(assert (<= var286 2)) ; Cond: $i0 <= 2 
(define-const var439 String null-String) ; Statement: $r4 = null 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getNameTokenCount/746314320=([jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor], int)}
; {var711=jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor, var3283=r0, var56=$z0, var286=$i0, var1639=null_type, var439=$r4}
; {jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor=var711, r0=var3283, $z0=var56, $i0=var286, null_type=var1639, $r4=var439}
;seq 
;cnt {}
;stmts r0 := @this: jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor;	$z0 = <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean $assertionsDisabled>;	if $z0 != 0 goto $i0 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: int getNameTokenCount()>();	$i0 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: int getNameTokenCount()>();	if $i0 <= 2 goto $r4 = null;	$r4 = null;	return $r4
;block_num 4