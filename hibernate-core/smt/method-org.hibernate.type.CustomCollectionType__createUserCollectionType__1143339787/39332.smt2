(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3894 0)
(declare-sort var2816 0)
(declare-sort var2189 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3894!class ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var2816-init () var2816)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var2816 String) void)
(declare-fun cast-from-var2816-to-var2189 (var2816) var2189)
(declare-const null-ClassObject ClassObject)
(declare-const var1321 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1321 null-ClassObject)))
(define-const var472 ClassObject var3894!class) ; Statement: $r1 = class "Lorg/hibernate/usertype/UserCollectionType;" 
(assert true)
(define-const var2485 Bool (isAssignableFrom/-1028998700 var472 var1321)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r0) 
 ; Statement: if $z0 != 0 goto $r2 = virtualinvoke r0.<java.lang.Class: java.lang.Object newInstance()>() 
(assert (not (not (= (ite var2485 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3255 var2816 var2816-init) ; Statement: $r25 = new org.hibernate.MappingException 
(define-const var2004 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2004)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2004!1 String)
(assert (= var2004!1 ""))
(assert true)
(define-const var3979 String (append/672562846 var2004!1 "Custom type does not implement UserCollectionType: ")) ; Statement: $r7 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Custom type does not implement UserCollectionType: ") 
(declare-const var2004!2 String)
(assert (= var2004!2 (str.++ var2004!1 "Custom type does not implement UserCollectionType: ")))
(assert true)
(define-const var3148 String (getName/-1958580599 var1321)) ; Statement: $r6 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var103 String (append/672562846 var3979 var3148)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3979!1 String)
(assert (= var3979!1 (str.++ var3979 var3148)))
(assert true)
(define-const var2534 String (toString/-2075883882 var103)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var3255 var2534)) ; Statement: specialinvoke $r25.<org.hibernate.MappingException: void <init>(java.lang.String)>($r9) 

(declare-const var3255!1 var2816)
(declare-const var2534!1 String)
(define-const var3802 var2189 (cast-from-var2816-to-var2189 var3255!1)) ; Statement: $r30 = (java.lang.Throwable) $r25 
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var2816-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var2816-to-var2189=([org.hibernate.MappingException], java.lang.Throwable)}
; {var1321=r0, var3894=org.hibernate.usertype.UserCollectionType, var472=$r1, var2485=$z0, var2816=org.hibernate.MappingException, var3255=$r25, var2004=$r24, var3979=$r7, var3148=$r6, var103=$r8, var2534=$r9, var2189=java.lang.Throwable, var3802=$r30}
; {r0=var1321, org.hibernate.usertype.UserCollectionType=var3894, $r1=var472, $z0=var2485, org.hibernate.MappingException=var2816, $r25=var3255, $r24=var2004, $r7=var3979, $r6=var3148, $r8=var103, $r9=var2534, java.lang.Throwable=var2189, $r30=var3802}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	$r1 = class "Lorg/hibernate/usertype/UserCollectionType;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r0);	if $z0 != 0 goto $r2 = virtualinvoke r0.<java.lang.Class: java.lang.Object newInstance()>();	$r25 = new org.hibernate.MappingException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Custom type does not implement UserCollectionType: ");	$r6 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r25.<org.hibernate.MappingException: void <init>(java.lang.String)>($r9);	$r30 = (java.lang.Throwable) $r25;	throw $r30
;block_num 2