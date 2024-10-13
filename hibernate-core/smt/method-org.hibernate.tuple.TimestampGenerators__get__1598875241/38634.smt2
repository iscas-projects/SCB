(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1495 0)
(declare-sort var35 0)
(declare-sort var1172 0)
(declare-sort var3131 0)
(declare-sort var123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1495_get/1088891777 (var1495 var1172) var1172)
(declare-fun cast-from-ClassObject-to-var1172 (ClassObject) var1172)
(declare-fun cast-from-var1172-to-var3131 (var1172) var3131)
(declare-fun var123_isNull/-1052882743 (var1172) Bool)
(declare-fun cast-from-var3131-to-var1172 (var3131) var1172)
(declare-const null-ClassObject ClassObject)
(declare-const var35-generators var1495)
(declare-const var1469 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1469 null-ClassObject)))
(define-const var751 var1495 var35-generators) ; Statement: $r1 = <org.hibernate.tuple.TimestampGenerators: java.util.Map generators> 
(define-const var1548 var1172 (var1495_get/1088891777 var751 (cast-from-ClassObject-to-var1172 var1469))) ; Statement: $r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0) 
(define-const var3353 var3131 (cast-from-var1172-to-var3131 var1548)) ; Statement: r3 = (org.hibernate.tuple.ValueGenerator) $r2 
(define-const var3378 Bool (var123_isNull/-1052882743 (cast-from-var3131-to-var1172 var3353))) ; Statement: $z0 = staticinvoke <java.util.Objects: boolean isNull(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto return r3 
(assert (= (ite var3378 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1495_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var1172=([java.lang.Class], java.lang.Object), cast-from-var1172-to-var3131=([java.lang.Object], org.hibernate.tuple.ValueGenerator), var123_isNull/-1052882743=([java.lang.Object], boolean), cast-from-var3131-to-var1172=([org.hibernate.tuple.ValueGenerator], java.lang.Object)}
; {var1469=r0, var1495=java.util.Map, var35=org.hibernate.tuple.TimestampGenerators, var751=$r1, var1172=java.lang.Object, var1548=$r2, var3131=org.hibernate.tuple.ValueGenerator, var3353=r3, var123=java.util.Objects, var3378=$z0}
; {r0=var1469, java.util.Map=var1495, org.hibernate.tuple.TimestampGenerators=var35, $r1=var751, java.lang.Object=var1172, $r2=var1548, org.hibernate.tuple.ValueGenerator=var3131, r3=var3353, java.util.Objects=var123, $z0=var3378}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Class;	$r1 = <org.hibernate.tuple.TimestampGenerators: java.util.Map generators>;	$r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0);	r3 = (org.hibernate.tuple.ValueGenerator) $r2;	$z0 = staticinvoke <java.util.Objects: boolean isNull(java.lang.Object)>(r3);	if $z0 == 0 goto return r3;	return r3
;block_num 2