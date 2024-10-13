(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2888 0)
(declare-sort var3066 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ensureNoIdClass/-1881447077 (var2888) void)
(declare-fun id/962040814 (var2888) var3066)
(declare-fun checkType/1391536518 (var2888 var3066 ClassObject) void)
(declare-const null-var2888 var2888)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3066 var3066)
(declare-const var2138 var2888) ; Statement: r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType 
(assert (not (= var2138 null-var2888)))
(declare-const var263 ClassObject) ; Statement: r2 := @parameter0: java.lang.Class 
(assert (not (= var263 null-ClassObject)))
(assert true)
;(assert (ensureNoIdClass/-1881447077 var2138)) ; Statement: specialinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: void ensureNoIdClass()>() 

(declare-const var2138!1 var2888)
(define-const var2493 var3066 (id/962040814 var2138!1)) ; Statement: $r1 = r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute id> 
 ; Statement: if $r1 != null goto $r3 = r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute id> 
(assert (not (= var2493 null-var3066))) ; Cond: $r1 != null 
(define-const var998 var3066 (id/962040814 var2138!1)) ; Statement: $r3 = r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute id> 
(assert true)
;(assert (checkType/1391536518 var2138!1 var998 var263)) ; Statement: specialinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: void checkType(org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute,java.lang.Class)>($r3, r2) 

(declare-const var2138!2 var2888)
(declare-const var998!1 var3066)
(declare-const var263!1 ClassObject)
(define-const var1041 var3066 (id/962040814 var2138!2)) ; Statement: $r4 = r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute id> 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {ensureNoIdClass/-1881447077=([org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType], void), id/962040814=([org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType], org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute), checkType/1391536518=([org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType, org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute, java.lang.Class], void)}
; {var2888=org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType, var2138=r0, var263=r2, var3066=org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute, var2493=$r1, var998=$r3, var1041=$r4}
; {org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType=var2888, r0=var2138, r2=var263, org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute=var3066, $r1=var2493, $r3=var998, $r4=var1041}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType;	r2 := @parameter0: java.lang.Class;	specialinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: void ensureNoIdClass()>();	$r1 = r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute id>;	if $r1 != null goto $r3 = r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute id>;	$r3 = r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute id>;	specialinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: void checkType(org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute,java.lang.Class)>($r3, r2);	$r4 = r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute id>;	return $r4
;block_num 2