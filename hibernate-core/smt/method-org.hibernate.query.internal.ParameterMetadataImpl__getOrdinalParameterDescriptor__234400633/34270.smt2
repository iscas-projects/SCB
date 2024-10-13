(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var507 0)
(declare-sort var3150 0)
(declare-sort var3124 0)
(declare-sort var1431 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinalDescriptorMap/-225037837 (var507) var3150)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var3150_get/1088891777 (var3150 var3124) var3124)
(declare-fun cast-from-Int-to-var3124 (Int) var3124)
(declare-fun cast-from-var3124-to-var1431 (var3124) var1431)
(declare-const null-var507 var507)
(declare-const null-Int Int)
(declare-const null-var1431 var1431)
(declare-const var1815 var507) ; Statement: r0 := @this: org.hibernate.query.internal.ParameterMetadataImpl 
(assert (not (= var1815 null-var507)))
(declare-const var3213 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3213 null-Int)))
(define-const var954 var3150 (ordinalDescriptorMap/-225037837 var1815)) ; Statement: $r1 = r0.<org.hibernate.query.internal.ParameterMetadataImpl: java.util.Map ordinalDescriptorMap> 
(define-const var2381 Int (Int_valueOf/-1371140006 var3213)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var1251 var3124 (var3150_get/1088891777 var954 (cast-from-Int-to-var3124 var2381))) ; Statement: $r3 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2) 
(define-const var2606 var1431 (cast-from-var3124-to-var1431 var1251)) ; Statement: r4 = (org.hibernate.engine.query.spi.OrdinalParameterDescriptor) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var2606 null-var1431))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinalDescriptorMap/-225037837=([org.hibernate.query.internal.ParameterMetadataImpl], java.util.Map), Int_valueOf/-1371140006=([int], java.lang.Integer), var3150_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var3124=([java.lang.Integer], java.lang.Object), cast-from-var3124-to-var1431=([java.lang.Object], org.hibernate.engine.query.spi.OrdinalParameterDescriptor)}
; {var507=org.hibernate.query.internal.ParameterMetadataImpl, var1815=r0, var3213=i0, var3150=java.util.Map, var954=$r1, var2381=$r2, var3124=java.lang.Object, var1251=$r3, var1431=org.hibernate.engine.query.spi.OrdinalParameterDescriptor, var2606=r4}
; {org.hibernate.query.internal.ParameterMetadataImpl=var507, r0=var1815, i0=var3213, java.util.Map=var3150, $r1=var954, $r2=var2381, java.lang.Object=var3124, $r3=var1251, org.hibernate.engine.query.spi.OrdinalParameterDescriptor=var1431, r4=var2606}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.query.internal.ParameterMetadataImpl;	i0 := @parameter0: int;	$r1 = r0.<org.hibernate.query.internal.ParameterMetadataImpl: java.util.Map ordinalDescriptorMap>;	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r3 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2);	r4 = (org.hibernate.engine.query.spi.OrdinalParameterDescriptor) $r3;	if r4 != null goto return r4;	return r4
;block_num 2