(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1408 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun operator/306573967 (var1408) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var1408 var1408)
(declare-const var3636 var1408) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor 
(assert (not (= var3636 null-var1408)))
(define-const var327 String (operator/306573967 var3636)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String operator> 
(assert true)
(define-const var1383 Int (indexOf/-1209756239 var327 "|")) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int indexOf(java.lang.String)>("|") 
(define-const var3463 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r2 = r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String operator> 
(assert (not (= var1383 var3463))) ; Cond: i0 != $i2 
(define-const var389 String (operator/306573967 var3636)) ; Statement: $r2 = r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String operator> 
(assert (not (and true (and (>= 0 0) (>= (str.len var389) var1383) (>= var1383 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {operator/306573967=([jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1408=jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor, var3636=r0, var327=$r1, var1383=i0, var3463=$i2, var389=$r2, var1117=$r3}
; {jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor=var1408, r0=var3636, $r1=var327, i0=var1383, $i2=var3463, $r2=var389, $r3=var1117}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor;	$r1 = r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String operator>;	i0 = virtualinvoke $r1.<java.lang.String: int indexOf(java.lang.String)>("|");	$i2 = (int) -1;	if i0 != $i2 goto $r2 = r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String operator>;	$r2 = r0.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String operator>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	return $r3
;block_num 3