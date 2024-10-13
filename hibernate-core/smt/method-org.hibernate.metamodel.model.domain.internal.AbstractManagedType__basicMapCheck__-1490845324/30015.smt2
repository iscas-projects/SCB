(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1956 0)
(declare-sort var2281 0)
(declare-sort var1809 0)
(declare-sort var3519 0)
(declare-sort var194 0)
(declare-sort var3143 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var194!class ClassObject)
(declare-fun cast-from-var2281-to-var3519 (var2281) var3519)
(declare-fun checkNotNull/236213459 (var1956 String var3519 String) void)
(declare-fun getClass/1258963082 (var3143) ClassObject)
(declare-fun cast-from-var2281-to-var3143 (var2281) var3143)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-const null-var1956 var1956)
(declare-const null-var2281 var2281)
(declare-const null-String String)
(declare-const var3606 var1956) ; Statement: r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType 
(assert (not (= var3606 null-var1956)))
(declare-const var3993 var2281) ; Statement: r1 := @parameter0: javax.persistence.metamodel.PluralAttribute 
(assert (not (= var3993 null-var2281)))
(declare-const var126 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var126 null-String)))
(define-const var1994 var3519 (cast-from-var2281-to-var3519 var3993)) ; Statement: $r14 = (javax.persistence.metamodel.Attribute) r1 
(assert true)
;(assert (checkNotNull/236213459 var3606 "MapAttribute" var1994 var126)) ; Statement: specialinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractManagedType: void checkNotNull(java.lang.String,javax.persistence.metamodel.Attribute,java.lang.String)>("MapAttribute", $r14, r2) 

(declare-const var3606!1 var1956)
(declare-const var1761 String)
(declare-const var1994!1 var3519)
(declare-const var126!1 String)
(define-const var2846 ClassObject var194!class) ; Statement: $r4 = class "Ljavax/persistence/metamodel/MapAttribute;" 
(assert true)
(define-const var2606 ClassObject (getClass/1258963082 (cast-from-var2281-to-var3143 var3993))) ; Statement: $r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3802 Bool (isAssignableFrom/-1028998700 var2846 var2606)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r3) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var3802 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2281-to-var3519=([javax.persistence.metamodel.PluralAttribute], javax.persistence.metamodel.Attribute), checkNotNull/236213459=([org.hibernate.metamodel.model.domain.internal.AbstractManagedType, java.lang.String, javax.persistence.metamodel.Attribute, java.lang.String], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2281-to-var3143=([javax.persistence.metamodel.PluralAttribute], java.lang.Object), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean)}
; {var1956=org.hibernate.metamodel.model.domain.internal.AbstractManagedType, var3606=r0, var2281=javax.persistence.metamodel.PluralAttribute, var3993=r1, var126=r2, var1809=null_type, var3519=javax.persistence.metamodel.Attribute, var1994=$r14, var1761="MapAttribute", var194=javax.persistence.metamodel.MapAttribute, var2846=$r4, var3143=java.lang.Object, var2606=$r3, var3802=$z0}
; {org.hibernate.metamodel.model.domain.internal.AbstractManagedType=var1956, r0=var3606, javax.persistence.metamodel.PluralAttribute=var2281, r1=var3993, r2=var126, null_type=var1809, javax.persistence.metamodel.Attribute=var3519, $r14=var1994, "MapAttribute"=var1761, javax.persistence.metamodel.MapAttribute=var194, $r4=var2846, java.lang.Object=var3143, $r3=var2606, $z0=var3802}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType;	r1 := @parameter0: javax.persistence.metamodel.PluralAttribute;	r2 := @parameter1: java.lang.String;	$r14 = (javax.persistence.metamodel.Attribute) r1;	specialinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractManagedType: void checkNotNull(java.lang.String,javax.persistence.metamodel.Attribute,java.lang.String)>("MapAttribute", $r14, r2);	$r4 = class "Ljavax/persistence/metamodel/MapAttribute;";	$r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$z0 = virtualinvoke $r4.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r3);	if $z0 != 0 goto return;	return
;block_num 2