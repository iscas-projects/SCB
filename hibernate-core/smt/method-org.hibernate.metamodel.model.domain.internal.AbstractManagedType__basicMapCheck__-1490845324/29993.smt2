(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1705 0)
(declare-sort var169 0)
(declare-sort var2917 0)
(declare-sort var582 0)
(declare-sort var1661 0)
(declare-sort var952 0)
(declare-sort var2314 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1661!class ClassObject)
(declare-fun cast-from-var169-to-var582 (var169) var582)
(declare-fun checkNotNull/236213459 (var1705 String var582 String) void)
(declare-fun getClass/1258963082 (var952) ClassObject)
(declare-fun cast-from-var169-to-var952 (var169) var952)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var2314-init () var2314)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var952) String)
(declare-fun cast-from-ClassObject-to-var952 (ClassObject) var952)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2314 String) void)
(declare-const null-var1705 var1705)
(declare-const null-var169 var169)
(declare-const null-String String)
(declare-const var1379 var1705) ; Statement: r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType 
(assert (not (= var1379 null-var1705)))
(declare-const var1604 var169) ; Statement: r1 := @parameter0: javax.persistence.metamodel.PluralAttribute 
(assert (not (= var1604 null-var169)))
(declare-const var2993 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2993 null-String)))
(define-const var1316 var582 (cast-from-var169-to-var582 var1604)) ; Statement: $r14 = (javax.persistence.metamodel.Attribute) r1 
(assert true)
;(assert (checkNotNull/236213459 var1379 "MapAttribute" var1316 var2993)) ; Statement: specialinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractManagedType: void checkNotNull(java.lang.String,javax.persistence.metamodel.Attribute,java.lang.String)>("MapAttribute", $r14, r2) 

(declare-const var1379!1 var1705)
(declare-const var448 String)
(declare-const var1316!1 var582)
(declare-const var2993!1 String)
(define-const var2595 ClassObject var1661!class) ; Statement: $r4 = class "Ljavax/persistence/metamodel/MapAttribute;" 
(assert true)
(define-const var3533 ClassObject (getClass/1258963082 (cast-from-var169-to-var952 var1604))) ; Statement: $r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var800 Bool (isAssignableFrom/-1028998700 var2595 var3533)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r3) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var800 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1850 var2314 var2314-init) ; Statement: $r13 = new java.lang.IllegalArgumentException 
(define-const var771 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var771)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var771!1 String)
(assert (= var771!1 ""))
(assert true)
(define-const var549 String (append/672562846 var771!1 var2993!1)) ; Statement: $r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var771!2 String)
(assert (= var771!2 (str.++ var771!1 var2993!1)))
(assert true)
(define-const var1453 String (append/672562846 var549 " is not a MapAttribute: ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a MapAttribute: ") 
(declare-const var549!1 String)
(assert (= var549!1 (str.++ var549 " is not a MapAttribute: ")))
(assert true)
(define-const var3424 ClassObject (getClass/1258963082 (cast-from-var169-to-var952 var1604))) ; Statement: $r8 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2186 String (append/-1031950772 var1453 (cast-from-ClassObject-to-var952 var3424))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var1453!1 String)
(assert (str.prefixof var1453 var1453!1))
(assert true)
(define-const var3740 String (toString/-2075883882 var2186)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1850 var3740)) ; Statement: specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var1850!1 var2314)
(declare-const var3740!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var169-to-var582=([javax.persistence.metamodel.PluralAttribute], javax.persistence.metamodel.Attribute), checkNotNull/236213459=([org.hibernate.metamodel.model.domain.internal.AbstractManagedType, java.lang.String, javax.persistence.metamodel.Attribute, java.lang.String], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var169-to-var952=([javax.persistence.metamodel.PluralAttribute], java.lang.Object), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var2314-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var952=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1705=org.hibernate.metamodel.model.domain.internal.AbstractManagedType, var1379=r0, var169=javax.persistence.metamodel.PluralAttribute, var1604=r1, var2993=r2, var2917=null_type, var582=javax.persistence.metamodel.Attribute, var1316=$r14, var448="MapAttribute", var1661=javax.persistence.metamodel.MapAttribute, var2595=$r4, var952=java.lang.Object, var3533=$r3, var800=$z0, var2314=java.lang.IllegalArgumentException, var1850=$r13, var771=$r12, var549=$r7, var1453=$r9, var3424=$r8, var2186=$r10, var3740=$r11}
; {org.hibernate.metamodel.model.domain.internal.AbstractManagedType=var1705, r0=var1379, javax.persistence.metamodel.PluralAttribute=var169, r1=var1604, r2=var2993, null_type=var2917, javax.persistence.metamodel.Attribute=var582, $r14=var1316, "MapAttribute"=var448, javax.persistence.metamodel.MapAttribute=var1661, $r4=var2595, java.lang.Object=var952, $r3=var3533, $z0=var800, java.lang.IllegalArgumentException=var2314, $r13=var1850, $r12=var771, $r7=var549, $r9=var1453, $r8=var3424, $r10=var2186, $r11=var3740}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType;	r1 := @parameter0: javax.persistence.metamodel.PluralAttribute;	r2 := @parameter1: java.lang.String;	$r14 = (javax.persistence.metamodel.Attribute) r1;	specialinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractManagedType: void checkNotNull(java.lang.String,javax.persistence.metamodel.Attribute,java.lang.String)>("MapAttribute", $r14, r2);	$r4 = class "Ljavax/persistence/metamodel/MapAttribute;";	$r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$z0 = virtualinvoke $r4.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r3);	if $z0 != 0 goto return;	$r13 = new java.lang.IllegalArgumentException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a MapAttribute: ");	$r8 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r13
;block_num 2