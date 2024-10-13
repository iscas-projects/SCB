(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3152 0)
(declare-sort var1136 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun concretePropertySelectFragment/1132736677 (var3152 String (Array Int Bool)) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-const null-var3152 var3152)
(declare-const null-String String)
(declare-const null-__Array__Int__Bool__ (Array Int Bool))
(declare-const var261 var3152) ; Statement: r0 := @this: org.hibernate.persister.entity.AbstractEntityPersister 
(assert (not (= var261 null-var3152)))
(declare-const var518 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var518 null-String)))
(declare-const var2434 (Array Int Bool)) ; Statement: r2 := @parameter1: boolean[] 
(assert (not (= var2434 null-__Array__Int__Bool__)))
(assert true)
(define-const var627 String (concretePropertySelectFragment/1132736677 var261 var518 var2434)) ; Statement: r3 = virtualinvoke r0.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String concretePropertySelectFragment(java.lang.String,boolean[])>(r1, r2) 
(assert true)
(define-const var2117 Int (indexOf/-1209756239 var627 ", ")) ; Statement: i0 = virtualinvoke r3.<java.lang.String: int indexOf(java.lang.String)>(", ") 
 ; Statement: if i0 != 0 goto return r3 
(assert (not (= var2117 0))) ; Cond: i0 != 0 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {concretePropertySelectFragment/1132736677=([org.hibernate.persister.entity.AbstractEntityPersister, java.lang.String, boolean[]], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int)}
; {var3152=org.hibernate.persister.entity.AbstractEntityPersister, var261=r0, var518=r1, var1136=null_type, var2434=r2, var627=r3, var2117=i0}
; {org.hibernate.persister.entity.AbstractEntityPersister=var3152, r0=var261, r1=var518, null_type=var1136, r2=var2434, r3=var627, i0=var2117}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.persister.entity.AbstractEntityPersister;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: boolean[];	r3 = virtualinvoke r0.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String concretePropertySelectFragment(java.lang.String,boolean[])>(r1, r2);	i0 = virtualinvoke r3.<java.lang.String: int indexOf(java.lang.String)>(", ");	if i0 != 0 goto return r3;	return r3
;block_num 2