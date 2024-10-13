(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var993 0)
(declare-sort var371 0)
(declare-sort var2558 0)
(declare-sort var466 0)
(declare-sort var1484 0)
(declare-sort var2403 0)
(declare-sort var355 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1484!class ClassObject)
(declare-fun cast-from-var371-to-var466 (var371) var466)
(declare-fun checkNotNull/236213459 (var993 String var466 String) void)
(declare-fun getClass/1258963082 (var2403) ClassObject)
(declare-fun cast-from-var371-to-var2403 (var371) var2403)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var355-init () var355)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2403) String)
(declare-fun cast-from-ClassObject-to-var2403 (ClassObject) var2403)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var355 String) void)
(declare-const null-var993 var993)
(declare-const null-var371 var371)
(declare-const null-String String)
(declare-const var1804 var993) ; Statement: r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType 
(assert (not (= var1804 null-var993)))
(declare-const var37 var371) ; Statement: r1 := @parameter0: javax.persistence.metamodel.PluralAttribute 
(assert (not (= var37 null-var371)))
(declare-const var882 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var882 null-String)))
(define-const var474 var466 (cast-from-var371-to-var466 var37)) ; Statement: $r14 = (javax.persistence.metamodel.Attribute) r1 
(assert true)
;(assert (checkNotNull/236213459 var1804 "SetAttribute" var474 var882)) ; Statement: specialinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractManagedType: void checkNotNull(java.lang.String,javax.persistence.metamodel.Attribute,java.lang.String)>("SetAttribute", $r14, r2) 

(declare-const var1804!1 var993)
(declare-const var295 String)
(declare-const var474!1 var466)
(declare-const var882!1 String)
(define-const var3549 ClassObject var1484!class) ; Statement: $r4 = class "Ljavax/persistence/metamodel/SetAttribute;" 
(assert true)
(define-const var88 ClassObject (getClass/1258963082 (cast-from-var371-to-var2403 var37))) ; Statement: $r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1300 Bool (isAssignableFrom/-1028998700 var3549 var88)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r3) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var1300 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1530 var355 var355-init) ; Statement: $r13 = new java.lang.IllegalArgumentException 
(define-const var3468 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3468)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3468!1 String)
(assert (= var3468!1 ""))
(assert true)
(define-const var3709 String (append/672562846 var3468!1 var882!1)) ; Statement: $r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3468!2 String)
(assert (= var3468!2 (str.++ var3468!1 var882!1)))
(assert true)
(define-const var300 String (append/672562846 var3709 " is not a SetAttribute: ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a SetAttribute: ") 
(declare-const var3709!1 String)
(assert (= var3709!1 (str.++ var3709 " is not a SetAttribute: ")))
(assert true)
(define-const var3054 ClassObject (getClass/1258963082 (cast-from-var371-to-var2403 var37))) ; Statement: $r8 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3195 String (append/-1031950772 var300 (cast-from-ClassObject-to-var2403 var3054))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var300!1 String)
(assert (str.prefixof var300 var300!1))
(assert true)
(define-const var1738 String (toString/-2075883882 var3195)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1530 var1738)) ; Statement: specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var1530!1 var355)
(declare-const var1738!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var371-to-var466=([javax.persistence.metamodel.PluralAttribute], javax.persistence.metamodel.Attribute), checkNotNull/236213459=([org.hibernate.metamodel.model.domain.internal.AbstractManagedType, java.lang.String, javax.persistence.metamodel.Attribute, java.lang.String], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var371-to-var2403=([javax.persistence.metamodel.PluralAttribute], java.lang.Object), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var355-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2403=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var993=org.hibernate.metamodel.model.domain.internal.AbstractManagedType, var1804=r0, var371=javax.persistence.metamodel.PluralAttribute, var37=r1, var882=r2, var2558=null_type, var466=javax.persistence.metamodel.Attribute, var474=$r14, var295="SetAttribute", var1484=javax.persistence.metamodel.SetAttribute, var3549=$r4, var2403=java.lang.Object, var88=$r3, var1300=$z0, var355=java.lang.IllegalArgumentException, var1530=$r13, var3468=$r12, var3709=$r7, var300=$r9, var3054=$r8, var3195=$r10, var1738=$r11}
; {org.hibernate.metamodel.model.domain.internal.AbstractManagedType=var993, r0=var1804, javax.persistence.metamodel.PluralAttribute=var371, r1=var37, r2=var882, null_type=var2558, javax.persistence.metamodel.Attribute=var466, $r14=var474, "SetAttribute"=var295, javax.persistence.metamodel.SetAttribute=var1484, $r4=var3549, java.lang.Object=var2403, $r3=var88, $z0=var1300, java.lang.IllegalArgumentException=var355, $r13=var1530, $r12=var3468, $r7=var3709, $r9=var300, $r8=var3054, $r10=var3195, $r11=var1738}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType;	r1 := @parameter0: javax.persistence.metamodel.PluralAttribute;	r2 := @parameter1: java.lang.String;	$r14 = (javax.persistence.metamodel.Attribute) r1;	specialinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractManagedType: void checkNotNull(java.lang.String,javax.persistence.metamodel.Attribute,java.lang.String)>("SetAttribute", $r14, r2);	$r4 = class "Ljavax/persistence/metamodel/SetAttribute;";	$r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$z0 = virtualinvoke $r4.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r3);	if $z0 != 0 goto return;	$r13 = new java.lang.IllegalArgumentException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a SetAttribute: ");	$r8 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r13
;block_num 2