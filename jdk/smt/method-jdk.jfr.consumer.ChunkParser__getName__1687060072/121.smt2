(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2246 0)
(declare-sort var128 0)
(declare-sort var3199 0)
(declare-sort var392 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun typeMap/2088780777 (var2246) var128)
(declare-fun get/112017457 (var128 Int) var3199)
(declare-fun cast-from-var3199-to-var392 (var3199) var392)
(declare-fun getName/-2081927433 (var392) String)
(declare-const null-var2246 var2246)
(declare-const null-Int Int)
(declare-const null-var392 var392)
(declare-const var2446 var2246) ; Statement: r0 := @this: jdk.jfr.consumer.ChunkParser 
(assert (not (= var2446 null-var2246)))
(declare-const var2224 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var2224 null-Int)))
(define-const var2989 var128 (typeMap/2088780777 var2446)) ; Statement: $r1 = r0.<jdk.jfr.consumer.ChunkParser: jdk.jfr.consumer.LongMap typeMap> 
(assert true)
(define-const var847 var3199 (get/112017457 var2989 var2224)) ; Statement: $r2 = virtualinvoke $r1.<jdk.jfr.consumer.LongMap: java.lang.Object get(long)>(l0) 
(define-const var168 var392 (cast-from-var3199-to-var392 var847)) ; Statement: r3 = (jdk.jfr.internal.Type) $r2 
 ; Statement: if r3 != null goto $r8 = virtualinvoke r3.<jdk.jfr.internal.Type: java.lang.String getName()>() 
(assert (not (= var168 null-var392))) ; Cond: r3 != null 
(assert true)
(define-const var604 String (getName/-2081927433 var168)) ; Statement: $r8 = virtualinvoke r3.<jdk.jfr.internal.Type: java.lang.String getName()>() 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {typeMap/2088780777=([jdk.jfr.consumer.ChunkParser], jdk.jfr.consumer.LongMap), get/112017457=([jdk.jfr.consumer.LongMap, long], java.lang.Object), cast-from-var3199-to-var392=([java.lang.Object], jdk.jfr.internal.Type), getName/-2081927433=([jdk.jfr.internal.Type], java.lang.String)}
; {var2246=jdk.jfr.consumer.ChunkParser, var2446=r0, var2224=l0, var128=jdk.jfr.consumer.LongMap, var2989=$r1, var3199=java.lang.Object, var847=$r2, var392=jdk.jfr.internal.Type, var168=r3, var604=$r8}
; {jdk.jfr.consumer.ChunkParser=var2246, r0=var2446, l0=var2224, jdk.jfr.consumer.LongMap=var128, $r1=var2989, java.lang.Object=var3199, $r2=var847, jdk.jfr.internal.Type=var392, r3=var168, $r8=var604}
;seq 
;cnt {}
;stmts r0 := @this: jdk.jfr.consumer.ChunkParser;	l0 := @parameter0: long;	$r1 = r0.<jdk.jfr.consumer.ChunkParser: jdk.jfr.consumer.LongMap typeMap>;	$r2 = virtualinvoke $r1.<jdk.jfr.consumer.LongMap: java.lang.Object get(long)>(l0);	r3 = (jdk.jfr.internal.Type) $r2;	if r3 != null goto $r8 = virtualinvoke r3.<jdk.jfr.internal.Type: java.lang.String getName()>();	$r8 = virtualinvoke r3.<jdk.jfr.internal.Type: java.lang.String getName()>();	return $r8
;block_num 3