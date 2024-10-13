(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3989 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun operator/306573967 (var3989) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3989 var3989)
(declare-const var3910 var3989) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor 
(assert (not (= var3910 null-var3989)))
(define-const var3534 String (operator/306573967 var3910)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String operator> 
(assert true)
(define-const var2261 Int (indexOf/-1209756239 var3534 "|")) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int indexOf(java.lang.String)>("|") 
(define-const var542 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r2 = r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String operator> 
(assert (not (not (= var2261 var542)))) ; Negate: Cond: i0 != $i2  
(define-const var2804 String (operator/306573967 var3910)) ; Statement: $r3 = r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String operator> 
 ; Statement: goto [?= return $r3] 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {operator/306573967=([jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var3989=jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor, var3910=r0, var3534=$r1, var2261=i0, var542=$i2, var2804=$r3}
; {jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor=var3989, r0=var3910, $r1=var3534, i0=var2261, $i2=var542, $r3=var2804}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor;	$r1 = r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String operator>;	i0 = virtualinvoke $r1.<java.lang.String: int indexOf(java.lang.String)>("|");	$i2 = (int) -1;	if i0 != $i2 goto $r2 = r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String operator>;	$r3 = r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String operator>;	goto [?= return $r3];	return $r3
;block_num 3