(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var465 0)
(declare-sort var719 0)
(declare-sort var3097 0)
(declare-sort var2565 0)
(declare-sort var2748 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDiscriminator/231740898 (var2565) var3097)
(declare-fun cast-from-var465-to-var2565 (var465) var2565)
(declare-fun validate/-664311930 (var2748 var719) void)
(declare-fun cast-from-var465-to-var2748 (var465) var2748)
(declare-const null-var465 var465)
(declare-const null-var719 var719)
(declare-const null-var3097 var3097)
(declare-const var3329 var465) ; Statement: r0 := @this: org.hibernate.mapping.SingleTableSubclass 
(assert (not (= var3329 null-var465)))
(declare-const var1086 var719) ; Statement: r2 := @parameter0: org.hibernate.engine.spi.Mapping 
(assert (not (= var1086 null-var719)))
(assert true)
(define-const var2314 var3097 (getDiscriminator/231740898 (cast-from-var465-to-var2565 var3329))) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.mapping.SingleTableSubclass: org.hibernate.mapping.Value getDiscriminator()>() 
 ; Statement: if $r1 != null goto specialinvoke r0.<org.hibernate.mapping.Subclass: void validate(org.hibernate.engine.spi.Mapping)>(r2) 
(assert (not (= var2314 null-var3097))) ; Cond: $r1 != null 
(assert true)
;(assert (validate/-664311930 (cast-from-var465-to-var2748 var3329) var1086)) ; Statement: specialinvoke r0.<org.hibernate.mapping.Subclass: void validate(org.hibernate.engine.spi.Mapping)>(r2) 

(declare-const var3329!1 var465)
(declare-const var1086!1 var719)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getDiscriminator/231740898=([org.hibernate.mapping.Subclass], org.hibernate.mapping.Value), cast-from-var465-to-var2565=([org.hibernate.mapping.SingleTableSubclass], org.hibernate.mapping.Subclass), validate/-664311930=([org.hibernate.mapping.PersistentClass, org.hibernate.engine.spi.Mapping], void), cast-from-var465-to-var2748=([org.hibernate.mapping.SingleTableSubclass], org.hibernate.mapping.PersistentClass)}
; {var465=org.hibernate.mapping.SingleTableSubclass, var3329=r0, var719=org.hibernate.engine.spi.Mapping, var1086=r2, var3097=org.hibernate.mapping.Value, var2565=org.hibernate.mapping.Subclass, var2314=$r1, var2748=org.hibernate.mapping.PersistentClass}
; {org.hibernate.mapping.SingleTableSubclass=var465, r0=var3329, org.hibernate.engine.spi.Mapping=var719, r2=var1086, org.hibernate.mapping.Value=var3097, org.hibernate.mapping.Subclass=var2565, $r1=var2314, org.hibernate.mapping.PersistentClass=var2748}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.mapping.SingleTableSubclass;	r2 := @parameter0: org.hibernate.engine.spi.Mapping;	$r1 = virtualinvoke r0.<org.hibernate.mapping.SingleTableSubclass: org.hibernate.mapping.Value getDiscriminator()>();	if $r1 != null goto specialinvoke r0.<org.hibernate.mapping.Subclass: void validate(org.hibernate.engine.spi.Mapping)>(r2);	specialinvoke r0.<org.hibernate.mapping.Subclass: void validate(org.hibernate.engine.spi.Mapping)>(r2);	return
;block_num 2