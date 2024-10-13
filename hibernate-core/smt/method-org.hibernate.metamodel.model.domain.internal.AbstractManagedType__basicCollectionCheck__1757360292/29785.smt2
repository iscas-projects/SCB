(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var192 0)
(declare-sort var3307 0)
(declare-sort var446 0)
(declare-sort var795 0)
(declare-sort var2337 0)
(declare-sort var228 0)
(declare-sort var1764 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2337!class ClassObject)
(declare-fun cast-from-var3307-to-var795 (var3307) var795)
(declare-fun checkNotNull/236213459 (var192 String var795 String) void)
(declare-fun getClass/1258963082 (var228) ClassObject)
(declare-fun cast-from-var3307-to-var228 (var3307) var228)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var1764-init () var1764)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var228) String)
(declare-fun cast-from-ClassObject-to-var228 (ClassObject) var228)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1764 String) void)
(declare-const null-var192 var192)
(declare-const null-var3307 var3307)
(declare-const null-String String)
(declare-const var708 var192) ; Statement: r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType 
(assert (not (= var708 null-var192)))
(declare-const var3910 var3307) ; Statement: r1 := @parameter0: javax.persistence.metamodel.PluralAttribute 
(assert (not (= var3910 null-var3307)))
(declare-const var2323 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2323 null-String)))
(define-const var650 var795 (cast-from-var3307-to-var795 var3910)) ; Statement: $r14 = (javax.persistence.metamodel.Attribute) r1 
(assert true)
;(assert (checkNotNull/236213459 var708 "CollectionAttribute" var650 var2323)) ; Statement: specialinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractManagedType: void checkNotNull(java.lang.String,javax.persistence.metamodel.Attribute,java.lang.String)>("CollectionAttribute", $r14, r2) 

(declare-const var708!1 var192)
(declare-const var1920 String)
(declare-const var650!1 var795)
(declare-const var2323!1 String)
(define-const var3862 ClassObject var2337!class) ; Statement: $r4 = class "Ljavax/persistence/metamodel/CollectionAttribute;" 
(assert true)
(define-const var597 ClassObject (getClass/1258963082 (cast-from-var3307-to-var228 var3910))) ; Statement: $r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var298 Bool (isAssignableFrom/-1028998700 var3862 var597)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r3) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var298 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1806 var1764 var1764-init) ; Statement: $r13 = new java.lang.IllegalArgumentException 
(define-const var3562 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3562)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3562!1 String)
(assert (= var3562!1 ""))
(assert true)
(define-const var1968 String (append/672562846 var3562!1 var2323!1)) ; Statement: $r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3562!2 String)
(assert (= var3562!2 (str.++ var3562!1 var2323!1)))
(assert true)
(define-const var1625 String (append/672562846 var1968 " is not a CollectionAttribute: ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a CollectionAttribute: ") 
(declare-const var1968!1 String)
(assert (= var1968!1 (str.++ var1968 " is not a CollectionAttribute: ")))
(assert true)
(define-const var2632 ClassObject (getClass/1258963082 (cast-from-var3307-to-var228 var3910))) ; Statement: $r8 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var18 String (append/-1031950772 var1625 (cast-from-ClassObject-to-var228 var2632))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var1625!1 String)
(assert (str.prefixof var1625 var1625!1))
(assert true)
(define-const var3185 String (toString/-2075883882 var18)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1806 var3185)) ; Statement: specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var1806!1 var1764)
(declare-const var3185!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3307-to-var795=([javax.persistence.metamodel.PluralAttribute], javax.persistence.metamodel.Attribute), checkNotNull/236213459=([org.hibernate.metamodel.model.domain.internal.AbstractManagedType, java.lang.String, javax.persistence.metamodel.Attribute, java.lang.String], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3307-to-var228=([javax.persistence.metamodel.PluralAttribute], java.lang.Object), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var1764-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var228=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var192=org.hibernate.metamodel.model.domain.internal.AbstractManagedType, var708=r0, var3307=javax.persistence.metamodel.PluralAttribute, var3910=r1, var2323=r2, var446=null_type, var795=javax.persistence.metamodel.Attribute, var650=$r14, var1920="CollectionAttribute", var2337=javax.persistence.metamodel.CollectionAttribute, var3862=$r4, var228=java.lang.Object, var597=$r3, var298=$z0, var1764=java.lang.IllegalArgumentException, var1806=$r13, var3562=$r12, var1968=$r7, var1625=$r9, var2632=$r8, var18=$r10, var3185=$r11}
; {org.hibernate.metamodel.model.domain.internal.AbstractManagedType=var192, r0=var708, javax.persistence.metamodel.PluralAttribute=var3307, r1=var3910, r2=var2323, null_type=var446, javax.persistence.metamodel.Attribute=var795, $r14=var650, "CollectionAttribute"=var1920, javax.persistence.metamodel.CollectionAttribute=var2337, $r4=var3862, java.lang.Object=var228, $r3=var597, $z0=var298, java.lang.IllegalArgumentException=var1764, $r13=var1806, $r12=var3562, $r7=var1968, $r9=var1625, $r8=var2632, $r10=var18, $r11=var3185}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType;	r1 := @parameter0: javax.persistence.metamodel.PluralAttribute;	r2 := @parameter1: java.lang.String;	$r14 = (javax.persistence.metamodel.Attribute) r1;	specialinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractManagedType: void checkNotNull(java.lang.String,javax.persistence.metamodel.Attribute,java.lang.String)>("CollectionAttribute", $r14, r2);	$r4 = class "Ljavax/persistence/metamodel/CollectionAttribute;";	$r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$z0 = virtualinvoke $r4.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r3);	if $z0 != 0 goto return;	$r13 = new java.lang.IllegalArgumentException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a CollectionAttribute: ");	$r8 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r13
;block_num 2