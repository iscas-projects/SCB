(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var965 0)
(declare-sort var1905 0)
(declare-sort var3419 0)
(declare-sort var1356 0)
(declare-sort var3011 0)
(declare-sort var903 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3011!class ClassObject)
(declare-fun cast-from-var1905-to-var1356 (var1905) var1356)
(declare-fun checkNotNull/236213459 (var965 String var1356 String) void)
(declare-fun getClass/1258963082 (var903) ClassObject)
(declare-fun cast-from-var1905-to-var903 (var1905) var903)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-const null-var965 var965)
(declare-const null-var1905 var1905)
(declare-const null-String String)
(declare-const var3377 var965) ; Statement: r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType 
(assert (not (= var3377 null-var965)))
(declare-const var2994 var1905) ; Statement: r1 := @parameter0: javax.persistence.metamodel.PluralAttribute 
(assert (not (= var2994 null-var1905)))
(declare-const var3493 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3493 null-String)))
(define-const var2921 var1356 (cast-from-var1905-to-var1356 var2994)) ; Statement: $r14 = (javax.persistence.metamodel.Attribute) r1 
(assert true)
;(assert (checkNotNull/236213459 var3377 "CollectionAttribute" var2921 var3493)) ; Statement: specialinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractManagedType: void checkNotNull(java.lang.String,javax.persistence.metamodel.Attribute,java.lang.String)>("CollectionAttribute", $r14, r2) 

(declare-const var3377!1 var965)
(declare-const var2932 String)
(declare-const var2921!1 var1356)
(declare-const var3493!1 String)
(define-const var929 ClassObject var3011!class) ; Statement: $r4 = class "Ljavax/persistence/metamodel/CollectionAttribute;" 
(assert true)
(define-const var723 ClassObject (getClass/1258963082 (cast-from-var1905-to-var903 var2994))) ; Statement: $r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1147 Bool (isAssignableFrom/-1028998700 var929 var723)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r3) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1147 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1905-to-var1356=([javax.persistence.metamodel.PluralAttribute], javax.persistence.metamodel.Attribute), checkNotNull/236213459=([org.hibernate.metamodel.model.domain.internal.AbstractManagedType, java.lang.String, javax.persistence.metamodel.Attribute, java.lang.String], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1905-to-var903=([javax.persistence.metamodel.PluralAttribute], java.lang.Object), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean)}
; {var965=org.hibernate.metamodel.model.domain.internal.AbstractManagedType, var3377=r0, var1905=javax.persistence.metamodel.PluralAttribute, var2994=r1, var3493=r2, var3419=null_type, var1356=javax.persistence.metamodel.Attribute, var2921=$r14, var2932="CollectionAttribute", var3011=javax.persistence.metamodel.CollectionAttribute, var929=$r4, var903=java.lang.Object, var723=$r3, var1147=$z0}
; {org.hibernate.metamodel.model.domain.internal.AbstractManagedType=var965, r0=var3377, javax.persistence.metamodel.PluralAttribute=var1905, r1=var2994, r2=var3493, null_type=var3419, javax.persistence.metamodel.Attribute=var1356, $r14=var2921, "CollectionAttribute"=var2932, javax.persistence.metamodel.CollectionAttribute=var3011, $r4=var929, java.lang.Object=var903, $r3=var723, $z0=var1147}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType;	r1 := @parameter0: javax.persistence.metamodel.PluralAttribute;	r2 := @parameter1: java.lang.String;	$r14 = (javax.persistence.metamodel.Attribute) r1;	specialinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractManagedType: void checkNotNull(java.lang.String,javax.persistence.metamodel.Attribute,java.lang.String)>("CollectionAttribute", $r14, r2);	$r4 = class "Ljavax/persistence/metamodel/CollectionAttribute;";	$r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$z0 = virtualinvoke $r4.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r3);	if $z0 != 0 goto return;	return
;block_num 2