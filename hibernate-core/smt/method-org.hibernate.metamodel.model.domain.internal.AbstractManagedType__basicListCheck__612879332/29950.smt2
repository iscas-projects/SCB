(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var335 0)
(declare-sort var1613 0)
(declare-sort var1879 0)
(declare-sort var3543 0)
(declare-sort var485 0)
(declare-sort var2612 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var485!class ClassObject)
(declare-fun cast-from-var1613-to-var3543 (var1613) var3543)
(declare-fun checkNotNull/236213459 (var335 String var3543 String) void)
(declare-fun getClass/1258963082 (var2612) ClassObject)
(declare-fun cast-from-var1613-to-var2612 (var1613) var2612)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-const null-var335 var335)
(declare-const null-var1613 var1613)
(declare-const null-String String)
(declare-const var3484 var335) ; Statement: r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType 
(assert (not (= var3484 null-var335)))
(declare-const var2947 var1613) ; Statement: r1 := @parameter0: javax.persistence.metamodel.PluralAttribute 
(assert (not (= var2947 null-var1613)))
(declare-const var1525 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1525 null-String)))
(define-const var3658 var3543 (cast-from-var1613-to-var3543 var2947)) ; Statement: $r14 = (javax.persistence.metamodel.Attribute) r1 
(assert true)
;(assert (checkNotNull/236213459 var3484 "ListAttribute" var3658 var1525)) ; Statement: specialinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractManagedType: void checkNotNull(java.lang.String,javax.persistence.metamodel.Attribute,java.lang.String)>("ListAttribute", $r14, r2) 

(declare-const var3484!1 var335)
(declare-const var1215 String)
(declare-const var3658!1 var3543)
(declare-const var1525!1 String)
(define-const var3078 ClassObject var485!class) ; Statement: $r4 = class "Ljavax/persistence/metamodel/ListAttribute;" 
(assert true)
(define-const var1266 ClassObject (getClass/1258963082 (cast-from-var1613-to-var2612 var2947))) ; Statement: $r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var772 Bool (isAssignableFrom/-1028998700 var3078 var1266)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r3) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var772 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1613-to-var3543=([javax.persistence.metamodel.PluralAttribute], javax.persistence.metamodel.Attribute), checkNotNull/236213459=([org.hibernate.metamodel.model.domain.internal.AbstractManagedType, java.lang.String, javax.persistence.metamodel.Attribute, java.lang.String], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1613-to-var2612=([javax.persistence.metamodel.PluralAttribute], java.lang.Object), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean)}
; {var335=org.hibernate.metamodel.model.domain.internal.AbstractManagedType, var3484=r0, var1613=javax.persistence.metamodel.PluralAttribute, var2947=r1, var1525=r2, var1879=null_type, var3543=javax.persistence.metamodel.Attribute, var3658=$r14, var1215="ListAttribute", var485=javax.persistence.metamodel.ListAttribute, var3078=$r4, var2612=java.lang.Object, var1266=$r3, var772=$z0}
; {org.hibernate.metamodel.model.domain.internal.AbstractManagedType=var335, r0=var3484, javax.persistence.metamodel.PluralAttribute=var1613, r1=var2947, r2=var1525, null_type=var1879, javax.persistence.metamodel.Attribute=var3543, $r14=var3658, "ListAttribute"=var1215, javax.persistence.metamodel.ListAttribute=var485, $r4=var3078, java.lang.Object=var2612, $r3=var1266, $z0=var772}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType;	r1 := @parameter0: javax.persistence.metamodel.PluralAttribute;	r2 := @parameter1: java.lang.String;	$r14 = (javax.persistence.metamodel.Attribute) r1;	specialinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractManagedType: void checkNotNull(java.lang.String,javax.persistence.metamodel.Attribute,java.lang.String)>("ListAttribute", $r14, r2);	$r4 = class "Ljavax/persistence/metamodel/ListAttribute;";	$r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$z0 = virtualinvoke $r4.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r3);	if $z0 != 0 goto return;	return
;block_num 2