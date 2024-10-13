(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3598 0)
(declare-sort var3233 0)
(declare-sort var403 0)
(declare-sort var3737 0)
(declare-sort var2726 0)
(declare-sort var3930 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2726!class ClassObject)
(declare-fun cast-from-var3233-to-var3737 (var3233) var3737)
(declare-fun checkNotNull/236213459 (var3598 String var3737 String) void)
(declare-fun getClass/1258963082 (var3930) ClassObject)
(declare-fun cast-from-var3233-to-var3930 (var3233) var3930)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-const null-var3598 var3598)
(declare-const null-var3233 var3233)
(declare-const null-String String)
(declare-const var3687 var3598) ; Statement: r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType 
(assert (not (= var3687 null-var3598)))
(declare-const var3868 var3233) ; Statement: r1 := @parameter0: javax.persistence.metamodel.PluralAttribute 
(assert (not (= var3868 null-var3233)))
(declare-const var423 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var423 null-String)))
(define-const var3260 var3737 (cast-from-var3233-to-var3737 var3868)) ; Statement: $r14 = (javax.persistence.metamodel.Attribute) r1 
(assert true)
;(assert (checkNotNull/236213459 var3687 "SetAttribute" var3260 var423)) ; Statement: specialinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractManagedType: void checkNotNull(java.lang.String,javax.persistence.metamodel.Attribute,java.lang.String)>("SetAttribute", $r14, r2) 

(declare-const var3687!1 var3598)
(declare-const var457 String)
(declare-const var3260!1 var3737)
(declare-const var423!1 String)
(define-const var1470 ClassObject var2726!class) ; Statement: $r4 = class "Ljavax/persistence/metamodel/SetAttribute;" 
(assert true)
(define-const var365 ClassObject (getClass/1258963082 (cast-from-var3233-to-var3930 var3868))) ; Statement: $r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3482 Bool (isAssignableFrom/-1028998700 var1470 var365)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r3) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var3482 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3233-to-var3737=([javax.persistence.metamodel.PluralAttribute], javax.persistence.metamodel.Attribute), checkNotNull/236213459=([org.hibernate.metamodel.model.domain.internal.AbstractManagedType, java.lang.String, javax.persistence.metamodel.Attribute, java.lang.String], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3233-to-var3930=([javax.persistence.metamodel.PluralAttribute], java.lang.Object), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean)}
; {var3598=org.hibernate.metamodel.model.domain.internal.AbstractManagedType, var3687=r0, var3233=javax.persistence.metamodel.PluralAttribute, var3868=r1, var423=r2, var403=null_type, var3737=javax.persistence.metamodel.Attribute, var3260=$r14, var457="SetAttribute", var2726=javax.persistence.metamodel.SetAttribute, var1470=$r4, var3930=java.lang.Object, var365=$r3, var3482=$z0}
; {org.hibernate.metamodel.model.domain.internal.AbstractManagedType=var3598, r0=var3687, javax.persistence.metamodel.PluralAttribute=var3233, r1=var3868, r2=var423, null_type=var403, javax.persistence.metamodel.Attribute=var3737, $r14=var3260, "SetAttribute"=var457, javax.persistence.metamodel.SetAttribute=var2726, $r4=var1470, java.lang.Object=var3930, $r3=var365, $z0=var3482}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType;	r1 := @parameter0: javax.persistence.metamodel.PluralAttribute;	r2 := @parameter1: java.lang.String;	$r14 = (javax.persistence.metamodel.Attribute) r1;	specialinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractManagedType: void checkNotNull(java.lang.String,javax.persistence.metamodel.Attribute,java.lang.String)>("SetAttribute", $r14, r2);	$r4 = class "Ljavax/persistence/metamodel/SetAttribute;";	$r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$z0 = virtualinvoke $r4.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r3);	if $z0 != 0 goto return;	return
;block_num 2