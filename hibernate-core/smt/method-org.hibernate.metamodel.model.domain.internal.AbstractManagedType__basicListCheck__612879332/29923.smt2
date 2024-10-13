(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2017 0)
(declare-sort var432 0)
(declare-sort var366 0)
(declare-sort var2579 0)
(declare-sort var663 0)
(declare-sort var3814 0)
(declare-sort var1812 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var663!class ClassObject)
(declare-fun cast-from-var432-to-var2579 (var432) var2579)
(declare-fun checkNotNull/236213459 (var2017 String var2579 String) void)
(declare-fun getClass/1258963082 (var3814) ClassObject)
(declare-fun cast-from-var432-to-var3814 (var432) var3814)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var1812-init () var1812)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3814) String)
(declare-fun cast-from-ClassObject-to-var3814 (ClassObject) var3814)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1812 String) void)
(declare-const null-var2017 var2017)
(declare-const null-var432 var432)
(declare-const null-String String)
(declare-const var3101 var2017) ; Statement: r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType 
(assert (not (= var3101 null-var2017)))
(declare-const var1545 var432) ; Statement: r1 := @parameter0: javax.persistence.metamodel.PluralAttribute 
(assert (not (= var1545 null-var432)))
(declare-const var3641 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3641 null-String)))
(define-const var3318 var2579 (cast-from-var432-to-var2579 var1545)) ; Statement: $r14 = (javax.persistence.metamodel.Attribute) r1 
(assert true)
;(assert (checkNotNull/236213459 var3101 "ListAttribute" var3318 var3641)) ; Statement: specialinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractManagedType: void checkNotNull(java.lang.String,javax.persistence.metamodel.Attribute,java.lang.String)>("ListAttribute", $r14, r2) 

(declare-const var3101!1 var2017)
(declare-const var1254 String)
(declare-const var3318!1 var2579)
(declare-const var3641!1 String)
(define-const var186 ClassObject var663!class) ; Statement: $r4 = class "Ljavax/persistence/metamodel/ListAttribute;" 
(assert true)
(define-const var3916 ClassObject (getClass/1258963082 (cast-from-var432-to-var3814 var1545))) ; Statement: $r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3858 Bool (isAssignableFrom/-1028998700 var186 var3916)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r3) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var3858 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1662 var1812 var1812-init) ; Statement: $r13 = new java.lang.IllegalArgumentException 
(define-const var721 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var721)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var721!1 String)
(assert (= var721!1 ""))
(assert true)
(define-const var1956 String (append/672562846 var721!1 var3641!1)) ; Statement: $r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var721!2 String)
(assert (= var721!2 (str.++ var721!1 var3641!1)))
(assert true)
(define-const var2520 String (append/672562846 var1956 " is not a ListAttribute: ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a ListAttribute: ") 
(declare-const var1956!1 String)
(assert (= var1956!1 (str.++ var1956 " is not a ListAttribute: ")))
(assert true)
(define-const var183 ClassObject (getClass/1258963082 (cast-from-var432-to-var3814 var1545))) ; Statement: $r8 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var617 String (append/-1031950772 var2520 (cast-from-ClassObject-to-var3814 var183))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var2520!1 String)
(assert (str.prefixof var2520 var2520!1))
(assert true)
(define-const var1615 String (toString/-2075883882 var617)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1662 var1615)) ; Statement: specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var1662!1 var1812)
(declare-const var1615!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var432-to-var2579=([javax.persistence.metamodel.PluralAttribute], javax.persistence.metamodel.Attribute), checkNotNull/236213459=([org.hibernate.metamodel.model.domain.internal.AbstractManagedType, java.lang.String, javax.persistence.metamodel.Attribute, java.lang.String], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var432-to-var3814=([javax.persistence.metamodel.PluralAttribute], java.lang.Object), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var1812-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3814=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2017=org.hibernate.metamodel.model.domain.internal.AbstractManagedType, var3101=r0, var432=javax.persistence.metamodel.PluralAttribute, var1545=r1, var3641=r2, var366=null_type, var2579=javax.persistence.metamodel.Attribute, var3318=$r14, var1254="ListAttribute", var663=javax.persistence.metamodel.ListAttribute, var186=$r4, var3814=java.lang.Object, var3916=$r3, var3858=$z0, var1812=java.lang.IllegalArgumentException, var1662=$r13, var721=$r12, var1956=$r7, var2520=$r9, var183=$r8, var617=$r10, var1615=$r11}
; {org.hibernate.metamodel.model.domain.internal.AbstractManagedType=var2017, r0=var3101, javax.persistence.metamodel.PluralAttribute=var432, r1=var1545, r2=var3641, null_type=var366, javax.persistence.metamodel.Attribute=var2579, $r14=var3318, "ListAttribute"=var1254, javax.persistence.metamodel.ListAttribute=var663, $r4=var186, java.lang.Object=var3814, $r3=var3916, $z0=var3858, java.lang.IllegalArgumentException=var1812, $r13=var1662, $r12=var721, $r7=var1956, $r9=var2520, $r8=var183, $r10=var617, $r11=var1615}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType;	r1 := @parameter0: javax.persistence.metamodel.PluralAttribute;	r2 := @parameter1: java.lang.String;	$r14 = (javax.persistence.metamodel.Attribute) r1;	specialinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractManagedType: void checkNotNull(java.lang.String,javax.persistence.metamodel.Attribute,java.lang.String)>("ListAttribute", $r14, r2);	$r4 = class "Ljavax/persistence/metamodel/ListAttribute;";	$r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$z0 = virtualinvoke $r4.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r3);	if $z0 != 0 goto return;	$r13 = new java.lang.IllegalArgumentException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a ListAttribute: ");	$r8 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r13
;block_num 2